consultant = { given_name: 'Antony', surname: 'Donovan', height: 76}

#function to separate hash keys into an array, and hash values into an array
consultant.reduce({key:[], value: []}) { |memo, obj| memo[:key]<< obj[0]; memo}
consultant.reduce({key:[], value: []}) { |memo, obj| memo[:value]<< obj[1]; memo}


#reduce function that can do it all in one go
consultant.reduce({key:[], value:[]}) { |memo, obj|
  memo[:key]<< obj[0]
  memo[:value]<< obj[1];
  memo
}


consultant.each_with_object({ key:[], value:[]}) {|kv, m|
  m[:key]<<kv[0]
  m[:value]<<kv[1]
}
