package com.piggymetrics.account.domain;

import org.hibernate.validator.constraints.Length;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@Entity
public class Account {

  @Id
  private String name;

  private Date lastSeen;

  @Valid
  @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
  private List<Item> incomes;

  @Valid
  @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
  private List<Item> expenses;

  @Valid
  @NotNull
  @OneToOne(mappedBy = "account", cascade = CascadeType.ALL, optional = false)
  private Saving saving;

  @Length(min = 0, max = 20_000)
  private String note;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Date getLastSeen() {
    return lastSeen;
  }

  public void setLastSeen(Date lastSeen) {
    this.lastSeen = lastSeen;
  }

  public List<Item> getIncomes() {
    return incomes;
  }

  public void setIncomes(List<Item> incomes) {
    this.incomes = incomes;
  }

  public List<Item> getExpenses() {
    return expenses;
  }

  public void setExpenses(List<Item> expenses) {
    this.expenses = expenses;
  }

  public Saving getSaving() {
    return saving;
  }

  public void setSaving(Saving saving) {
    if (saving == null) {
      if (this.saving != null) {
        this.saving.setAccount(null);
      }
    } else {
      saving.setAccount(this);
    }
    this.saving = saving;
  }

  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }
}
