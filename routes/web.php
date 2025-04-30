<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\DepartmentController;
use App\Models\Article;
use App\Models\Department;
use App\Models\Setting;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::group(['prefix' => LaravelLocalization::setLocale()], function () {


    Route::get('/', function () {
      //  return 'oooooooooooooo';
        //  $banner = Article::find(3);
        // // $helpDep = Department::find(2);
        //  $slider = Department::find(1)->articles->where('articles_isactive', 'active');

        //  $offers_title = Article::find(4);
        //  $property_title = Article::find(5);
        //  $setting = Setting::find(1);
        //  $aboutUs = Article::find(6);
        //  $gallary = Department::find(4)->articles->where('articles_isactive', 'active');
        //  $offers = Department::find(3)->articles->where('articles_isactive', 'active');
        //  $buildings = Department::find(5)->articles->where('articles_isactive', 'active');

        // $newsbutton = Department::find(7)->articles->where('articles_isactive', 'active')->take(2);

        // return view('welcome', [
        //     "slider" => $slider,
        //      "banner" => $banner,
        //      "offers_title" => $offers_title,
        //      "property_title" => $property_title,
        //      "aboutUs" => $aboutUs,
        //      "gallary" => $gallary,
        //      "buildings" => $buildings,
        //      "offers" => $offers,
        //     // "news" => $news,
        //      "setting" => $setting,
        //     // "settingArticle" => $settingArticle,
        //     // "newsbutton" => $newsbutton
        // ]);

        return view('welcome');
    });

    Route::get('/departmentDetails/{id}',function(Request $request){
            return $request->id;
    });

   

    Route::prefix('admin')->middleware(['auth'])->group(function () {
        Route::resource('/department', DepartmentController::class);
        Route::resource('/article', ArticleController::class);
        //Route::resource('/clinics', ClinicsController::class);
        //Route::resource('/orders', OrderController::class);
        //Route::resource('/contactus', Contact_UsController::class);

        Route::get('/sort', [DepartmentController::class, 'Sort'])->name('Sort');
        // Route::resource('/testominals', TestominalsController::class);

        Route::get('/addSliderPage/{id}', [ArticleController::class, 'addSliderPage'])->name('addSliderPage');
        Route::post('/createslider', [ArticleController::class, 'createSlider'])->name('createSlider');
        Route::get('/editSliderPage/article={id}/dep={dep_id}', [ArticleController::class, 'editSliderPage'])->name('editSliderPage');
        Route::post('/editslider', [ArticleController::class, 'editSlider'])->name('editSlider');
        Route::post('/deleteslider', [ArticleController::class, 'deleteSlider'])->name('deleteSlider');
        //settings
        Route::get('/settingwebsite', [ArticleController::class, 'settingWebsite'])->name('settingWebsite');
        //editSetting
        Route::post('/editSetting', [ArticleController::class, 'editSetting'])->name('editSetting');
        //sort button   sortArticle
        Route::get('/sort', [ArticleController::class, 'Sort'])->name('Sort');
        Route::get('/sortArticle', [ArticleController::class, 'sortArticle'])->name('sortArticle');
        Route::get('/searcharticles', [ArticleController::class, 'searchArticles'])->name('searchArticles');
        //pdf and excel routes
        Route::get('/export/{id}', [ArticleController::class, 'export'])->name('export');
        Route::get('/downloadpdf/{id}', [ArticleController::class, 'downloadPdf'])->name('downloadPdf');

        // Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




        // //orders pages
        // Route::get('/searchorders', [OrderController::class, 'searchOrders'])->name('searchOrders');
        // Route::get('/sortorders', [OrderController::class, 'sortOrders'])->name('sortOrders');
        // //pdf and excel routes
        // Route::get('/exportOrder', [OrderController::class, 'exportOrder'])->name('exportOrder');
        // Route::get('/downloadpdfOrder', [OrderController::class, 'downloadpdfOrder'])->name('downloadpdfOrder');

        // Route::get('/searchTestominals', [TestominalsController::class, 'searchTestominals'])->name('searchTestominals');

        //  //sortContactRequests
        // Route::get('/sortContactRequests', [Contact_UsController::class, 'sortContactRequests'])->name('sortContactRequests');
        //  //searchContacts
        // Route::get('/searchContacts', [Contact_UsController::class, 'searchContacts'])->name('searchContacts');

        //    Route::get('/exportContacts', [Contact_UsController::class, 'exportContacts'])->name('exportContacts');
        // Route::get('/downloadpdfContacts', [Contact_UsController::class, 'downloadpdfContacts'])->name('downloadpdfContacts');


    });

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


    Auth::routes();
});








Route::get('/', function () {
    return redirect('/ar');
});