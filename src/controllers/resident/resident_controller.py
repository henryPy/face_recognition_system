from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
import sys

from util import common, standardized, message_box

# resident manage tab function
def admin_resident_clear_form(self):
    self.resident_manage_resident_tab_clear_form()
    self.resident_manage_staff_tab_clear_form()

def load_resident_manage(self):
    self.resident_manage_staff_load()
    self.resident_manage_resident_load()

def resident_manage_handle_button(self):
    self.pushButton_company_staff.clicked.connect(self.resident_manage_open_tab_staff)
    self.pushButton_resident.clicked.connect(self.resident_manage_open_tab_resident)
    self.resident_manage_handle_button_staff_tab()
    self.resident_manage_handle_button_resident_tab()

def resident_manage_handle_combobox(self):
    self.resident_manage_handle_combobox_staff_tab()
    self.resident_manage_handle_combobox_resident_tab()

def resident_manage_combobox_setting(self):
    self.resident_manage_combobox_setting_staff_tab()
    self.resident_manage_combobox_setting_resident_tab()

def resident_manage_combobox_setting_data_change(self):
    self.resident_manage_combobox_setting_data_change_staff_tab()
    self.resident_manage_combobox_setting_data_change_resident_tab()

def resident_manage_handle_search_line_edit(self):
    self.resident_manage_handle_search_line_edit_staff_tab()
    self.resident_manage_handle_search_line_edit_resident_tab()

def resident_manage_table_widget_setting(self):
    self.resident_manage_table_widget_setting_staff_tab()
    self.resident_manage_table_widget_setting_resident_tab()

def resident_manage_button_setting_and_ui(self):
    self.tabWidget_resident_manage.tabBar().setVisible(False)
    self.resident_manage_button_setting_and_ui_staff_tab()
    self.resident_manage_button_setting_and_ui_resident_tab()

def resident_manage_open_tab_staff(self):
    self.flag_tab = '020'
    if self.flag_anchor and self.flag_anchor != self.flag_tab:
        warning = QMessageBox.question(self, 'Warning', "Would you want to left this window and loss the data?", QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if warning == QMessageBox.Yes:
            self.flag_anchor = None
            self.admin_clear_form()
            self.access_control_person_image_stop_camera_capture()
            self.tabWidget_resident_manage.setCurrentIndex(0)
            common.set_tab_when_clicked(self.pushButton_company_staff, self.pushButton_resident)
            self.load_resident_manage()
    else:
        self.tabWidget_resident_manage.setCurrentIndex(0)
        common.set_tab_when_clicked(self.pushButton_company_staff, self.pushButton_resident)
        self.load_resident_manage()

def resident_manage_open_tab_resident(self):
    self.flag_tab = '021'
    if self.flag_anchor and self.flag_anchor != self.flag_tab:
        warning = QMessageBox.question(self, 'Warning', "Would you want to left this window and loss the data?", QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if warning == QMessageBox.Yes:
            self.flag_anchor = None
            self.admin_clear_form()
            self.access_control_person_image_stop_camera_capture()
            self.tabWidget_resident_manage.setCurrentIndex(1)
            common.set_tab_when_clicked(self.pushButton_resident, self.pushButton_company_staff)
            self.load_resident_manage()
    else:
        self.tabWidget_resident_manage.setCurrentIndex(1)
        common.set_tab_when_clicked(self.pushButton_resident, self.pushButton_company_staff)
        self.load_resident_manage()