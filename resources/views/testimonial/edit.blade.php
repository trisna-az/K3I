@extends('layouts.app')

@section('title', 'Data Testimonial')

@section('content')

<div class="container">
    <div class="table-responsive">
        <a href="/admin/testimonials" class="btn btn-primary mb-3">Kembali</a>
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('testimonials.update', $testimonial->id) }}" method="POST" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label for="">Judul</label>
                        <input type="text" class="form-control" name="title" placeholder="Judul" value="{{$testimonial->title}}">
                    </div>
                    @error('title')
                    <small style="color:red">{{$message}}</small>
                    @enderror
                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea id="" cols="30" rows="10" class="form-control" name="description" placeholder="Deskripsi">{{$testimonial->description}}</textarea>
                    </div>
                    @error('description')
                    <small style="color:red">{{$message}}</small>
                    @enderror
                    <img src="/image/{{$testimonial->image}}" alt="" class="img-fluid">
                    <div class="form-group">
                        <label for="">Gambar</label>
                        <input type="file" class="form-control" name="image">
                    </div>
                    @error('image')
                    <small style="color:red">{{$message}}</small>
                    @enderror
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
            </div>
        </div>
    </div>
</div>

@endsection
