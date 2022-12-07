package com.hanssem.app.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

public class QnaDto {
    private Integer qna_number;
    private String qna_category;
    private String qna_title;
    private String qna_content;
    private String qna_answer;
    private Integer qna_answer_status;
    private Integer qna_status;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date qna_register_date;
    private Integer member_number;
    private Integer product_number;
    private String member_id;

    public QnaDto(){}

    public QnaDto(Integer qna_number, String qna_category, String qna_title, String qna_content, String qna_answer, Integer qna_answer_status, Integer qna_status, Timestamp qna_register_date, Integer member_number, Integer product_number, String member_id) {
        this.qna_number = qna_number;
        this.qna_category = qna_category;
        this.qna_title = qna_title;
        this.qna_content = qna_content;
        this.qna_answer = qna_answer;
        this.qna_answer_status = qna_answer_status;
        this.qna_status = qna_status;
        this.qna_register_date = qna_register_date;
        this.member_number = member_number;
        this.product_number = product_number;
        this.member_id = member_id;
    }

    public Integer getQna_number() {
        return qna_number;
    }

    public void setQna_number(Integer qna_number) {
        this.qna_number = qna_number;
    }

    public String getQna_category() {
        return qna_category;
    }

    public void setQna_category(String qna_category) {
        this.qna_category = qna_category;
    }

    public String getQna_title() {
        return qna_title;
    }

    public void setQna_title(String qna_title) {
        this.qna_title = qna_title;
    }

    public String getQna_content() {
        return qna_content;
    }

    public void setQna_content(String qna_content) {
        this.qna_content = qna_content;
    }

    public String getQna_answer() {
        return qna_answer;
    }

    public void setQna_answer(String qna_answer) {
        this.qna_answer = qna_answer;
    }

    public Integer getQna_answer_status() {
        return qna_answer_status;
    }

    public void setQna_answer_status(Integer qna_answer_status) {
        this.qna_answer_status = qna_answer_status;
    }

    public Integer getQna_status() {
        return qna_status;
    }

    public void setQna_status(Integer qna_status) {
        this.qna_status = qna_status;
    }

    public Date getQna_register_date() {
        return qna_register_date;
    }

    public void setQna_register_date(Date qna_register_date) {
        this.qna_register_date = qna_register_date;
    }

    public Integer getMember_number() {
        return member_number;
    }

    public void setMember_number(Integer member_number) {
        this.member_number = member_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }
}
