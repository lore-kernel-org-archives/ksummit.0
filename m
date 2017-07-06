Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87769A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 14:41:28 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A87C6A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 14:41:27 +0000 (UTC)
Date: Thu, 6 Jul 2017 17:41:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20170706144116.kcvhyxezcpinhwq7@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
Subject: [Ksummit-discuss] [PATCH 1/2] kconfig: add a silent option to
	conf_write()
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The conf_write() function prints output "configuration written to .config" but
I don't want it to print anything so I have added an option for that.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 scripts/kconfig/conf.c      | 4 ++--
 scripts/kconfig/confdata.c  | 5 +++--
 scripts/kconfig/gconf.c     | 4 ++--
 scripts/kconfig/lkc_proto.h | 2 +-
 scripts/kconfig/mconf.c     | 4 ++--
 scripts/kconfig/nconf.c     | 4 ++--
 6 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/scripts/kconfig/conf.c b/scripts/kconfig/conf.c
index 866369f10ff8..c73b5ab859a2 100644
--- a/scripts/kconfig/conf.c
+++ b/scripts/kconfig/conf.c
@@ -690,7 +690,7 @@ int main(int ac, char **av)
 		/* silentoldconfig is used during the build so we shall update autoconf.
 		 * All other commands are only used to generate a config.
 		 */
-		if (conf_get_changed() && conf_write(NULL)) {
+		if (conf_get_changed() && conf_write(NULL, 0)) {
 			fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
 			exit(1);
 		}
@@ -705,7 +705,7 @@ int main(int ac, char **av)
 			return 1;
 		}
 	} else if (input_mode != listnewconfig) {
-		if (conf_write(NULL)) {
+		if (conf_write(NULL, 0)) {
 			fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
 			exit(1);
 		}
diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index 297b079ae4d9..7e8dbae6af30 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -738,7 +738,7 @@ int conf_write_defconfig(const char *filename)
 	return 0;
 }
 
-int conf_write(const char *name)
+int conf_write(const char *name, bool silent)
 {
 	FILE *out;
 	struct symbol *sym;
@@ -831,7 +831,8 @@ int conf_write(const char *name)
 			return 1;
 	}
 
-	conf_message(_("configuration written to %s"), newname);
+	if (!silent)
+		conf_message(_("configuration written to %s"), newname);
 
 	sym_set_change_count(0);
 
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index cfddddb9c9d7..115b5602d05e 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -523,7 +523,7 @@ void on_load1_activate(GtkMenuItem * menuitem, gpointer user_data)
 
 void on_save_activate(GtkMenuItem * menuitem, gpointer user_data)
 {
-	if (conf_write(NULL))
+	if (conf_write(NULL), 0)
 		text_insert_msg(_("Error"), _("Unable to save configuration !"));
 }
 
@@ -536,7 +536,7 @@ store_filename(GtkFileSelection * file_selector, gpointer user_data)
 	fn = gtk_file_selection_get_filename(GTK_FILE_SELECTION
 					     (user_data));
 
-	if (conf_write(fn))
+	if (conf_write(fn), 0)
 		text_insert_msg(_("Error"), _("Unable to save configuration !"));
 
 	gtk_widget_destroy(GTK_WIDGET(user_data));
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index d5398718ec2a..1690888bdbc4 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -5,7 +5,7 @@ void conf_parse(const char *name);
 int conf_read(const char *name);
 int conf_read_simple(const char *name, int);
 int conf_write_defconfig(const char *name);
-int conf_write(const char *name);
+int conf_write(const char *name, bool silent);
 int conf_write_autoconf(void);
 bool conf_get_changed(void);
 void conf_set_changed_callback(void (*fn)(void));
diff --git a/scripts/kconfig/mconf.c b/scripts/kconfig/mconf.c
index 315ce2c7cb9d..c029b5417fa9 100644
--- a/scripts/kconfig/mconf.c
+++ b/scripts/kconfig/mconf.c
@@ -937,7 +937,7 @@ static void conf_save(void)
 		case 0:
 			if (!dialog_input_result[0])
 				return;
-			if (!conf_write(dialog_input_result)) {
+			if (!conf_write(dialog_input_result, 0)) {
 				set_config_filename(dialog_input_result);
 				return;
 			}
@@ -971,7 +971,7 @@ static int handle_exit(void)
 
 	switch (res) {
 	case 0:
-		if (conf_write(filename)) {
+		if (conf_write(filename, 0)) {
 			fprintf(stderr, _("\n\n"
 					  "Error while writing of the configuration.\n"
 					  "Your configuration changes were NOT saved."
diff --git a/scripts/kconfig/nconf.c b/scripts/kconfig/nconf.c
index 003114779815..b4b0666bdc4c 100644
--- a/scripts/kconfig/nconf.c
+++ b/scripts/kconfig/nconf.c
@@ -666,7 +666,7 @@ static int do_exit(void)
 	/* if we got here, the user really wants to exit */
 	switch (res) {
 	case 0:
-		res = conf_write(filename);
+		res = conf_write(filename, 0);
 		if (res)
 			btn_dialog(
 				main_window,
@@ -1436,7 +1436,7 @@ static void conf_save(void)
 		case 0:
 			if (!dialog_input_result[0])
 				return;
-			res = conf_write(dialog_input_result);
+			res = conf_write(dialog_input_result, 0);
 			if (!res) {
 				set_config_filename(dialog_input_result);
 				return;
-- 
2.11.0
