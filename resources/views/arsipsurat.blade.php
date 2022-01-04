@extends('temp.v_temp')
@section('breadcumb','Arsip Surat')
@section('title', 'Arsip Surat')
@section('isicontent')

<div class="container-fluid py-4">
    <div class="row">
      <div class="col-12">
        <div class="card mb-4">
          <div class="card-header pb-0 mx-auto">
            <h6>Tabel Data Arsip Surat</h6>
          </div>
          <div class="card-body px-0 pt-0 pb-2">
            <div class="d-sm-inline-flex me-auto">
            <a href="/surat/add" class="badge bg-gradient-success">+ Add</a>
            </div>
            <form action="/surat" method="GET">
              <div class="d-sm-inline-flex py-2">
                <div class="bg-white border-radius-sm d-sm-flex me-8 ">
                  <input name="keyword" type="text" class="form-control ps-3" placeholder="Type here...">
                  <button type="submit" class="btn bg-gradient-primary my-1">Search</button>
                </div>
              </div>
            </form>
            @if(session('pesan'))
            <div class="alert alert-success alert-dimissible">
                <a href="/surat" class="badge bg-gradient-danger">X</a>
                <h5>Success!</h5>
                {{(session('pesan'))}}.
            </div>
            @endif
            <br>
            <div  class="table-responsive p-0">
              <table class="table align-items-center mb-0 table-bordered table-striped" >
                <thead>
                  <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tanggal</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nomor Surat</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Surat</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jenis Surat</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Pengirim</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tujuan</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Surat</th>
                    <th class="text-secondary opacity-7">Action</th>
                  </tr>
                </thead>
                <tbody>
                    <?php $id=1; ?>
                    @foreach ($surat as $data)
                        <tr>
                            <td> {{ $id++ }} </td>
                            <td> {{ $data->tanggal}} </td>
                            <td> {{ $data->NomorSurat}} </td>
                            <td> {{ $data->NamaSurat}} </td>
                            <td> {{ $data->JenisSurat}} </td>
                            <td> {{ $data->pengirim}} </td>
                            <td> {{ $data->tujuan}} </td>
                            <td> {{ $data->surat}}  </td>
                            <td> 
                                <form action="/surat/detail/{{$data->id}}" class="d-inline">
                                    <button class="badge bg-gradient-warning">view</button>
                                </form>
                                <form action="/surat/edit/{{$data->id}}" class="d-inline">
                                    <button class="badge bg-gradient-info">edit</button>
                                </form>
                                <form action="/surat/delete/{{$data->id}}" method="post" class="d-inline" 
                                    onsubmit="return confirm('Yakin Menghapus Data ini ?')">
                                    @method('delete')
                                    @csrf
                                    <button class="badge bg-gradient-danger">delete</button>
                                </form>
                            </td>
                        </tr>
                     @endforeach
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection

