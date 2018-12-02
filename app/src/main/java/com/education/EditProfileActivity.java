package com.education;

import android.app.DatePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.SyncStateContract;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.utils.StorageUtils;

import net.gotev.uploadservice.MultipartUploadRequest;
import net.gotev.uploadservice.UploadNotificationConfig;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import Config.ConstValue;
import util.AnimateFirstDisplayListener;
import util.CommonClass;
import util.JSONParser;
import util.JSONReader;
import util.RoundedImageView;


public class EditProfileActivity extends CommonAppCompatActivity {

    CommonClass common;
    JSONReader j_reader;
    JSONObject objStudData;
    DisplayImageOptions options;
    ImageLoaderConfiguration imgconfig;

    int PICK_IMAGE_REQUEST = 1;
    //storage permission code
    private static final int STORAGE_PERMISSION_CODE = 123;

    //Bitmap to get image from gallery
    private Bitmap bitmap;

    //Uri to store the image uri
    private Uri filePath;

    private RoundedImageView top_image;
    boolean clicked=false;
    boolean clickedResult = false;

    private ImageLoadingListener animateFirstListener = new AnimateFirstDisplayListener();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(getResources().getColor(R.color.color_11));
        }


        File cacheDir = StorageUtils.getCacheDirectory(this);
        options = new DisplayImageOptions.Builder()
                .showImageOnLoading(R.drawable.ic_home_logo)
                .showImageForEmptyUri(R.drawable.ic_home_logo)
                .showImageOnFail(R.drawable.ic_home_logo)
                .cacheInMemory(true)
                .cacheOnDisk(true)
                .considerExifParams(true)
                .displayer(new SimpleBitmapDisplayer())
                .imageScaleType(ImageScaleType.NONE)
                .build();

        imgconfig = new ImageLoaderConfiguration.Builder(this)
                .build();
        ImageLoader.getInstance().init(imgconfig);


        j_reader = new JSONReader(this);
        common = new CommonClass(this);

        new EditProfileActivity.getUserData().execute();






    }

    public void loadCView(){
        setContentView(R.layout.activity_editprofile);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        CollapsingToolbarLayout collapsToolbar = (CollapsingToolbarLayout)findViewById(R.id.toolbar_layout);

        try {

            RoundedImageView top_image = (RoundedImageView)findViewById(R.id.top_image);
            ImageLoader.getInstance().displayImage(ConstValue.BASE_URL + "/uploads/studentphoto/" + objStudData.getString("student_photo"), top_image, options, animateFirstListener);

            getSupportActionBar().setTitle("");

            TextView txtname = (TextView)findViewById(R.id.fullname);
            txtname.setText(objStudData.getString("student_name"));

            final TextView txtbdate = (TextView)findViewById(R.id.birthdate);
            txtbdate.setText(objStudData.getString("student_birthdate"));



            TextView txtstandard = (TextView)findViewById(R.id.standard);
            txtstandard.setText(objStudData.getString("standard_title"));

            TextView txtaddress = (TextView)findViewById(R.id.address);
            txtaddress.setText(objStudData.getString("student_address"));

            TextView txtcity = (TextView)findViewById(R.id.city);
            txtcity.setText(objStudData.getString("student_city"));

            TextView txtparentphone = (TextView)findViewById(R.id.parent_contact);
            txtparentphone.setText(objStudData.getString("student_parent_phone"));



            TextView txtmatra = (TextView)findViewById(R.id.matra);
            txtmatra.setText(objStudData.getString("matra"));

            TextView txtnrp = (TextView)findViewById(R.id.nrp);
            txtnrp.setText(objStudData.getString("nrp"));

            TextView txtkorp = (TextView)findViewById(R.id.korp);
            txtkorp.setText(objStudData.getString("korp"));

            TextView txtpangkat = (TextView)findViewById(R.id.pangkat);
            txtpangkat.setText(objStudData.getString("pangkat"));

            TextView txtjabatan = (TextView)findViewById(R.id.jabatan);
            txtjabatan.setText(objStudData.getString("jabatan"));

            TextView txtkesatuan = (TextView)findViewById(R.id.kesatuan);
            txtkesatuan.setText(objStudData.getString("kesatuan"));


            final Calendar myCalendar = Calendar.getInstance();

            final DatePickerDialog.OnDateSetListener date = new DatePickerDialog.OnDateSetListener() {

                @Override
                public void onDateSet(DatePicker view, int year, int monthOfYear,
                                      int dayOfMonth) {
                    // TODO Auto-generated method stub
                    myCalendar.set(Calendar.YEAR, year);
                    myCalendar.set(Calendar.MONTH, monthOfYear);
                    myCalendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);

                    String myFormat = "yyyy/MM/dd"; //In which you need put here
                    SimpleDateFormat sdf = new SimpleDateFormat(myFormat, Locale.US);

                    txtbdate.setText(sdf.format(myCalendar.getTime()));
                }

            };

            txtbdate.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    // TODO Auto-generated method stub
                    new DatePickerDialog(EditProfileActivity.this, date, myCalendar.get(Calendar.YEAR), myCalendar.get(Calendar.MONTH), myCalendar.get(Calendar.DAY_OF_MONTH)).show();
                }
            });



           final Button buttonChoose = (Button) findViewById(R.id.btnchoose);


            buttonChoose.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    // TODO Auto-generated method stub
                    Intent intent = new Intent();
                    intent.setType("image/*");
                    intent.setAction(Intent.ACTION_GET_CONTENT);
                    startActivityForResult(Intent.createChooser(intent, "Select Picture"), PICK_IMAGE_REQUEST);
                    clicked=true;

                }
            });

            FloatingActionButton fabsave = (FloatingActionButton) findViewById(R.id.fabsave);
            fabsave.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    //SendandUpdate();

                    AlertDialog alertDialog = new AlertDialog.Builder(EditProfileActivity.this).create();
                    alertDialog.setTitle("Ubah Data");
                    alertDialog.setMessage("Yakin akan mengubah data anda ?");
                    alertDialog.setButton(AlertDialog.BUTTON_NEGATIVE, "Batal",
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {
                                    dialog.dismiss();
                                }
                            });
                    alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {







                                    if (clicked && clickedResult){
										uploadMultipart();
                                        new EditProfileActivity.setUserData().execute();
                                        

                                    }else if (clicked){
                                        new EditProfileActivity.setUserDataNoUpload().execute();

                                    } else {

                                        new EditProfileActivity.setUserDataNoUpload().execute();

                                    }

                                    Intent intent = new Intent(EditProfileActivity.this, ProfileActivity.class);
                                    startActivity(intent);



                                }
                            });
                    alertDialog.show();
                }
            });




        } catch (JSONException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        top_image = (RoundedImageView)findViewById(R.id.top_image);

        if (requestCode == PICK_IMAGE_REQUEST && resultCode == RESULT_OK && data != null && data.getData() != null) {
            filePath = data.getData();
            try {
                bitmap = MediaStore.Images.Media.getBitmap(getContentResolver(), filePath);
                top_image.setImageBitmap(bitmap);

            } catch (IOException e) {
                e.printStackTrace();
            }
            clickedResult = true;
        }else {

            clickedResult = false;
        }


    }


    public void uploadMultipart() {
        //getting name for the image
       ///String name = editText.getText().toString().trim();

        String name = "foto";

        //getting the actual path of the image
        String path = getPath(filePath);




        //Uploading code
        try {
            String student_id = common.getSession(ConstValue.COMMON_KEY);

            //Creating a multi part request
            new MultipartUploadRequest(this, student_id, ConstValue.UPLOAD_URL)
                    .addFileToUpload(path, "image") //Adding file
                    .addParameter("name", name) //Adding text parameter to the request
                    .setNotificationConfig(new UploadNotificationConfig())
                    .setMaxRetries(2)
                    .startUpload(); //Starting the upload

        } catch (Exception exc) {
            Toast.makeText(this, exc.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    public String getPath(Uri uri) {
        Cursor cursor = getContentResolver().query(uri, null, null, null, null);
        cursor.moveToFirst();
        String document_id = cursor.getString(0);
        document_id = document_id.substring(document_id.lastIndexOf(":") + 1);
        cursor.close();

        cursor = getContentResolver().query(
                android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                null, MediaStore.Images.Media._ID + " = ? ", new String[]{document_id}, null);
        cursor.moveToFirst();
        String path = cursor.getString(cursor.getColumnIndex(MediaStore.Images.Media.DATA));
        cursor.close();

        return path;
    }




    public class getUserData extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.
            String responseString = null;

            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);

            nameValuePairs.add(new BasicNameValuePair("student_id", common.getSession(ConstValue.COMMON_KEY)));
            JSONParser jsonParser = new JSONParser();

            try {
                String json_responce = jsonParser.makeHttpRequest(ConstValue.STUDENT_PROFILE_URL,"POST", nameValuePairs);

                JSONObject jObj = new JSONObject(json_responce);
                if (jObj.has("responce") && !jObj.getBoolean("responce")) {
                    responseString = jObj.getString("error");
                }else {
                    if(jObj.has("data")){
                        objStudData = jObj.getJSONObject("data");

                    }else{
                        responseString = "User not found";
                    }
                }


            } catch (JSONException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
                e.printStackTrace();
            }

            // TODO: register the new account here.
            return responseString;
        }

        @Override
        protected void onPostExecute(final String success) {

            if (success==null) {
                loadCView();
            } else {
                Toast.makeText(getApplicationContext(),success,Toast.LENGTH_LONG).show();
            }
        }

        @Override
        protected void onCancelled() {
        }
    }


    public class setUserData extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.
            String responseString = null;

            TextView txtname = (TextView)findViewById(R.id.fullname);
            String name = txtname.getText().toString().trim();

            TextView txtbdate = (TextView)findViewById(R.id.birthdate);
            String bdate = txtbdate.getText().toString().trim();

            TextView txtaddress = (TextView)findViewById(R.id.address);
            String address = txtaddress.getText().toString().trim();

            TextView txtcity = (TextView)findViewById(R.id.city);
            String city = txtcity.getText().toString().trim();

            TextView txtparentphone = (TextView)findViewById(R.id.parent_contact);
            String parentphone = txtparentphone.getText().toString().trim();

            TextView txtmatra = (TextView)findViewById(R.id.matra);
            String matra = txtmatra.getText().toString().trim();

            TextView txtnrp = (TextView)findViewById(R.id.nrp);
            String nrp = txtnrp.getText().toString().trim();

            TextView txtkorp = (TextView)findViewById(R.id.korp);
            String korp = txtkorp.getText().toString().trim();

            TextView txtpangkat = (TextView)findViewById(R.id.pangkat);
            String pangkat = txtpangkat.getText().toString().trim();

            TextView txtjabatan = (TextView)findViewById(R.id.jabatan);
            String jabatan = txtjabatan.getText().toString().trim();

            TextView txtkesatuan = (TextView)findViewById(R.id.kesatuan);
            String kesatuan = txtkesatuan.getText().toString().trim();


            String path = getPath(filePath);


            File file = new File(path);
            String nameFile = file.getName();
            String student_photo = nameFile;








            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);

            nameValuePairs.add(new BasicNameValuePair("school_id", j_reader.getJSONkeyString("student_data", "school_id")));
            nameValuePairs.add(new BasicNameValuePair("student_id", common.getSession(ConstValue.COMMON_KEY)));
            nameValuePairs.add(new BasicNameValuePair("student_name", name));
            nameValuePairs.add(new BasicNameValuePair("student_birthdate",bdate));
            nameValuePairs.add(new BasicNameValuePair("student_address",address));
            nameValuePairs.add(new BasicNameValuePair("student_city",city));
            nameValuePairs.add(new BasicNameValuePair("student_parent_phone",parentphone));
            nameValuePairs.add(new BasicNameValuePair("matra",matra));
            nameValuePairs.add(new BasicNameValuePair("nrp",nrp));
            nameValuePairs.add(new BasicNameValuePair("korp",korp));
            nameValuePairs.add(new BasicNameValuePair("pangkat",pangkat));
            nameValuePairs.add(new BasicNameValuePair("jabatan",jabatan));
            nameValuePairs.add(new BasicNameValuePair("kesatuan",kesatuan));
            nameValuePairs.add(new BasicNameValuePair("student_photo",student_photo));
            JSONParser jsonParser = new JSONParser();

            try {
                String json_responce = jsonParser.makeHttpRequest(ConstValue.UPDATE_STUDENT,"POST", nameValuePairs);

                JSONObject jObj = new JSONObject(json_responce);
                if (jObj.has("berhasil")) {
                    //responseString = jObj.getString("error");
                    responseString = "Data berhasil disimpan..";
                }else if (!jObj.getBoolean("responce")){
                    responseString = jObj.getString("error");
                }else{
                        responseString = "Gagal";
                }



            } catch (JSONException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
                e.printStackTrace();
            }

            // TODO: register the new account here.
            return responseString;
        }

        @Override
        protected void onPostExecute(final String success) {

            if (success==null) {
                loadCView();
            } else {
                Toast.makeText(getApplicationContext(),success,Toast.LENGTH_LONG).show();
            }
        }

        @Override
        protected void onCancelled() {
        }
    }

    public class setUserDataNoUpload extends AsyncTask<Void, Void, String> {

        @Override
        protected String doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.
            String responseString = null;

            TextView txtname = (TextView)findViewById(R.id.fullname);
            String name = txtname.getText().toString().trim();

            TextView txtbdate = (TextView)findViewById(R.id.birthdate);
            String bdate = txtbdate.getText().toString().trim();

            TextView txtaddress = (TextView)findViewById(R.id.address);
            String address = txtaddress.getText().toString().trim();

            TextView txtcity = (TextView)findViewById(R.id.city);
            String city = txtcity.getText().toString().trim();

            TextView txtparentphone = (TextView)findViewById(R.id.parent_contact);
            String parentphone = txtparentphone.getText().toString().trim();

            TextView txtmatra = (TextView)findViewById(R.id.matra);
            String matra = txtmatra.getText().toString().trim();

            TextView txtnrp = (TextView)findViewById(R.id.nrp);
            String nrp = txtnrp.getText().toString().trim();

            TextView txtkorp = (TextView)findViewById(R.id.korp);
            String korp = txtkorp.getText().toString().trim();

            TextView txtpangkat = (TextView)findViewById(R.id.pangkat);
            String pangkat = txtpangkat.getText().toString().trim();

            TextView txtjabatan = (TextView)findViewById(R.id.jabatan);
            String jabatan = txtjabatan.getText().toString().trim();

            TextView txtkesatuan = (TextView)findViewById(R.id.kesatuan);
            String kesatuan = txtkesatuan.getText().toString().trim();


            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);

            nameValuePairs.add(new BasicNameValuePair("school_id", j_reader.getJSONkeyString("student_data", "school_id")));
            nameValuePairs.add(new BasicNameValuePair("student_id", common.getSession(ConstValue.COMMON_KEY)));
            nameValuePairs.add(new BasicNameValuePair("student_name", name));
            nameValuePairs.add(new BasicNameValuePair("student_birthdate",bdate));
            nameValuePairs.add(new BasicNameValuePair("student_address",address));
            nameValuePairs.add(new BasicNameValuePair("student_city",city));
            nameValuePairs.add(new BasicNameValuePair("student_parent_phone",parentphone));
            nameValuePairs.add(new BasicNameValuePair("matra",matra));
            nameValuePairs.add(new BasicNameValuePair("nrp",nrp));
            nameValuePairs.add(new BasicNameValuePair("korp",korp));
            nameValuePairs.add(new BasicNameValuePair("pangkat",pangkat));
            nameValuePairs.add(new BasicNameValuePair("jabatan",jabatan));
            nameValuePairs.add(new BasicNameValuePair("kesatuan",kesatuan));
            JSONParser jsonParser = new JSONParser();

            try {
                String json_responce = jsonParser.makeHttpRequest(ConstValue.UPDATE_STUDENT,"POST", nameValuePairs);

                JSONObject jObj = new JSONObject(json_responce);
                if (jObj.has("berhasil")) {
                    //responseString = jObj.getString("error");
                    responseString = "Data berhasil disimpan..";
                }else if (!jObj.getBoolean("responce")){
                    responseString = jObj.getString("error");
                }else{
                    responseString = "Gagal";
                }



            } catch (JSONException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                responseString = e.getMessage();
                e.printStackTrace();
            }

            // TODO: register the new account here.
            return responseString;
        }

        @Override
        protected void onPostExecute(final String success) {

            if (success==null) {
                loadCView();
            } else {
                Toast.makeText(getApplicationContext(),success,Toast.LENGTH_LONG).show();
            }
        }

        @Override
        protected void onCancelled() {
        }
    }


}
