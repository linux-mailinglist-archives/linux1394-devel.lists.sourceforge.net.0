Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F42E7F9265
	for <lists+linux1394-devel@lfdr.de>; Sun, 26 Nov 2023 11:57:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1r7Coi-0004wt-Ph;
	Sun, 26 Nov 2023 10:56:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1r7Coh-0004wn-5R
 for linux1394-devel@lists.sourceforge.net;
 Sun, 26 Nov 2023 10:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tOFsWT7hyYEnZz61EnwE74udrdZMm8oYZIRywQ9XAHw=; b=hDQ0DJe+AvlpyPOwrz/32hFwua
 JezFO6UChyru9wtA29NRxaYII9ASnYn6EZOtHQVlStpC5CdXSc2lKkzWtr5aOJcJP5+uAQf+Tyg+0
 4l5m7p2TKhzfuzUJErmnUS3MjwXs6T+1BbHI6M4D2nwJOPoGOmlnU6TPrB+eWZOiYm30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tOFsWT7hyYEnZz61EnwE74udrdZMm8oYZIRywQ9XAHw=; b=N
 KfCnsLK8AL7ixS295NcOL+k56TkDOjlD3i1QZZEUNItxFMmAGkMZklpn4xAc9O8dgRIUJ9eCQ7S1J
 7U6ZlzoA6HKDX+ew64bHV5VQUV0EsyswiqiqG8OljMqKQaFOLk4bYOCg8HOEpqGK0HiZuJVJpzNxE
 7g9i6zjKdz8BhvfQ=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r7Cog-000724-MP for linux1394-devel@lists.sourceforge.net;
 Sun, 26 Nov 2023 10:56:47 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id BDC1A1A16DC
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 26 Nov 2023 05:37:58 -0500 (EST)
Date: Sun, 26 Nov 2023 02:37:56 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] Fix missing sysfs vendor/model entries for some devices
Message-ID: <ZWMgBK3vnYjy63AD@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, When the Sony DVMC-DA1 is connected,
 /sys/bus/firewire/devices/fw1/
 has a vendor entry, but is missing vendor_name, model, and model_name. This
 is the DVMC-DA1's config ROM: 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r7Cog-000724-MP
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

When the Sony DVMC-DA1 is connected, /sys/bus/firewire/devices/fw1/ has 
a vendor entry, but is missing vendor_name, model, and model_name.

This is the DVMC-DA1's config ROM:

00000000: fbe7 1e04 3439 3331 0040 64e0 0346 0008  ....4931.@d..F..
00000010: 3c19 1400 81b6 0600 4600 0803 c083 000c  <.......F.......
00000020: 0a00 008d 0300 00d1 0500 00c3 0a00 0081  ................
00000030: bfcd 0200 2da0 0012 0000 0113 fe0c 0200  ....-...........
00000040: 0000 fa17 0800 0081 6ec6 0200 0346 0008  ........n....F..
00000050: 3c19 1400 269e 0300 0000 0000 0000 0000  <...&...........
00000060: 796e 6f53 1d00 0500 0000 0000 0000 0000  ynoS............
00000070: 434d 5644 3141 442d 0000 0000            CMVD1AD-....

Note that the root directory contains two entries for vendor. The first 
is a Vendor_ID immediate value, and the second is a Vendor_Info 
directory. The descriptor for vendor_name is after the Vendor_Info 
entry. However, search_leaf compares the directory entry high byte 
against the desired key_id without masking off the type bits, so it 
doesn't recognize the Vendor_Info entry.

Also, the model and model_name are not in the root directory, but 
instead are in the vendor directory. search_leaf and show_immediate 
don't see these, because they only search the root directory.

The following patch fixes the above problems.

The new behavior is conformant with Annex A of 1394TA Document 1999027, 
Configuration ROM for AV/C Devices 1.0: "Some legacy devices may have 
their Model_IDs and textual descriptors in minimal ASCII subset in their 
vendor directories. It is recommended for a controller to read the 
Model_ID and its descriptor in the vendor directory of a target only if 
the Model_ID and its descriptor are not present in the root directory of 
the target."

In addition to the DVMC-DA1, other devices are also affected. This patch 
also fixes the missing sysfs entries for the Sony DCR-TRV120 and 
Panasonic AG-DV1DC. The Sony DCR-TRV310 has been reported to have the 
same problem and should be fixed by the patch, but I don't have one for 
testing.


--- core-device.c.orig	2023-09-23 02:11:13.000000000 -0700
+++ core-device.c	2023-11-25 20:58:02.000000000 -0800
@@ -54,13 +54,19 @@
 
 	fw_csr_iterator_init(&ci, directory);
 	while (fw_csr_iterator_next(&ci, &key, &value)) {
-		if (last_key == search_key &&
+		if ((last_key & 0x3f) == search_key &&
 		    key == (CSR_DESCRIPTOR | CSR_LEAF))
 			return ci.p - 1 + value;
 
 		last_key = key;
 	}
 
+	/* Not in root directory, check vendor directory if present */
+	fw_csr_iterator_init(&ci, directory);
+	while (fw_csr_iterator_next(&ci, &key, &value))
+		if (key == (CSR_VENDOR | CSR_DIRECTORY))
+			return search_leaf(ci.p - 1 + value, search_key);
+
 	return NULL;
 }
 
@@ -245,14 +251,32 @@
 	u32 key;
 };
 
+static int search_immediate(const u32 *directory, int search_key)
+{
+	struct fw_csr_iterator ci;
+	int key, value;
+
+	fw_csr_iterator_init(&ci, directory);
+	while (fw_csr_iterator_next(&ci, &key, &value))
+		if (key == search_key)
+			return value;
+
+	/* Not in root directory, check vendor directory if present */
+	fw_csr_iterator_init(&ci, directory);
+	while (fw_csr_iterator_next(&ci, &key, &value))
+		if (key == (CSR_VENDOR | CSR_DIRECTORY))
+			return search_immediate(ci.p - 1 + value, search_key);
+
+	return -1;
+}
+
 static ssize_t show_immediate(struct device *dev,
 			      struct device_attribute *dattr, char *buf)
 {
 	struct config_rom_attribute *attr =
 		container_of(dattr, struct config_rom_attribute, attr);
-	struct fw_csr_iterator ci;
 	const u32 *dir;
-	int key, value, ret = -ENOENT;
+	int value, ret = -ENOENT;
 
 	down_read(&fw_device_rwsem);
 
@@ -261,13 +285,9 @@
 	else
 		dir = fw_device(dev)->config_rom + 5;
 
-	fw_csr_iterator_init(&ci, dir);
-	while (fw_csr_iterator_next(&ci, &key, &value))
-		if (attr->key == key) {
-			ret = snprintf(buf, buf ? PAGE_SIZE : 0,
-				       "0x%06x\n", value);
-			break;
-		}
+	value = search_immediate(dir, attr->key);
+	if (value != -1)
+		ret = snprintf(buf, buf ? PAGE_SIZE : 0, "0x%06x\n", value);
 
 	up_read(&fw_device_rwsem);
 



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
