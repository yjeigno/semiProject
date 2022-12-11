package com.hanssem.app.dto;



public class AddressDto {

    private Integer address_number;

    private String address_home;

    private String address_name;

    private String address_phone;

    private String address_adrs;

    public AddressDto(){}

    public AddressDto(Integer address_number, String address_home, String address_name, String address_phone, String address_adrs) {
        this.address_number = address_number;
        this.address_home = address_home;
        this.address_name = address_name;
        this.address_phone = address_phone;
        this.address_adrs = address_adrs;
    }

    @Override
    public String toString() {
        return "AddressDto{" +
                "address_number=" + address_number +
                ", address_home='" + address_home + '\'' +
                ", address_name='" + address_name + '\'' +
                ", address_phone='" + address_phone + '\'' +
                ", address_adrs='" + address_adrs + '\'' +
                '}';
    }

    public Integer getAddress_number() {
        return address_number;
    }

    public void setAddress_number(Integer address_number) {
        this.address_number = address_number;
    }

    public String getAddress_home() {
        return address_home;
    }

    public void setAddress_home(String address_home) {
        this.address_home = address_home;
    }

    public String getAddress_name() {
        return address_name;
    }

    public void setAddress_name(String address_name) {
        this.address_name = address_name;
    }

    public String getAddress_phone() {
        return address_phone;
    }

    public void setAddress_phone(String address_phone) {
        this.address_phone = address_phone;
    }

    public String getAddress_adrs() {
        return address_adrs;
    }

    public void setAddress_adrs(String address_adrs) {
        this.address_adrs = address_adrs;
    }
}
