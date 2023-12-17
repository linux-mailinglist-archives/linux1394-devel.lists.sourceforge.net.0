Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0BD815E7B
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPy-0007gm-Jl;
	Sun, 17 Dec 2023 10:30:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPx-0007ga-9V
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tlbzFSAVTLU8/7G01uILlJQsR6kJ19oJ8HcV/Gzb9L4=; b=QJuq9xhKiTy1uSLIiLRq8J36E3
 AzGnIoYuht9hvd4OocQyEtow4c2i92ycqKMFjRvEtWrTfRViJGXn9kWGcuIfJppnlAUNPYmL3xgRd
 yKrkYgxLqVFOuYxaeaJuBG9FBfVz0mKJ2BbRJpdKtYd+p4RzCqmO+X7roMaZRAP7bhAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tlbzFSAVTLU8/7G01uILlJQsR6kJ19oJ8HcV/Gzb9L4=; b=AzQWezC5oCOVRbWnImNLeSwAHT
 yfDZI+sDIPsu2RdvPIv/vxfX3qC/mFc5MnGCaITUeEwNcGIgNi3RB55xoL5jHUmgJnzD5OAZ+/KXE
 ajFzZOdZ3f91/E73Jr+du+T0Xi4e5xxwlvCS4F2tYOBIUeq0ccLafZosPko+3+UqF9tk=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPv-00048Z-GH for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:40 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id AEBD45C0121;
 Sun, 17 Dec 2023 05:30:26 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 17 Dec 2023 05:30:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809026; x=
 1702895426; bh=tlbzFSAVTLU8/7G01uILlJQsR6kJ19oJ8HcV/Gzb9L4=; b=R
 k1TfrRj48BMz1MjS4u8ALG0bH6VytvO3Ks+uyTt3tysT/qxD/F7+qn8ntX0/idLs
 qifyXWL5c7Ub3mTI6lkCsY0tz+XnWhnnz3JsXdqr6u5yXgJfnUwQ+nkRuxmhSQoy
 mfGpFgzEuwDHFfekEH3E8H0jtWBOejhWOrUgaVr29ZoCkILA3WJGgejGdZoa+JEh
 f4lf3Oat5d7R6jvypX5OsPNzgv8l5zCGLS1TU+Q2cpB2hgeTMs0fCNzdK9vZzbUS
 wh9o67eblJ/PUXZKPCnw5VsLHkGmVUqunTb3WUr6/kWe8CzYkuqglYk3Gb3W9Foo
 dGK+xCww6cfdoXmbezmBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809026; x=
 1702895426; bh=tlbzFSAVTLU8/7G01uILlJQsR6kJ19oJ8HcV/Gzb9L4=; b=Y
 AHuSqyylVf0N9ClmS5/VH/M860iogNWeUBXk+e91Mg5z+IXU8tbtQ0hRkc5MlCIk
 PTRb0qRp0lE+FuQXv1na0aTpKnvWwEViovUFXXIrUGCEABk3ZqTWFb3OjMz2wuWA
 2rPuUaN1DB0XiGO9Jimm/9oPbGiLYXRZsYJCy5f1mIYqheAdP5jZm2JBTPD9UzdA
 8YGg4e0LnkgUZfnrhlyOyEEeE2GCBPaeylY8OLQ7XXnBz0LOdrs2b/1Sqfb7a1xV
 qxVobTdUe1R2nTSaedwU1M8KxG2TGtj+jq0MoiGOqeW4MKnXOEP+xAeyuEXdmya6
 i+b7Ntj+VlQpjUeIgzNiw==
X-ME-Sender: <xms:ws1-ZX8Eq_zFo38VcEIB6FT3vC-1yo7wWZl7a-X1l0XMw_QdA__aBw>
 <xme:ws1-ZTsg5cmDbJfNwDq7iMVLCnvrEBQkskP8lQCK5QjnpcTZ0iAhe7crrtx10eB-P
 O-bZ3jFblr4BvWCYKU>
X-ME-Received: <xmr:ws1-ZVATSKnmYDFy9TCMfnzkfvdTtZfI-YiFWE0Jsua72l03V7Y494ObnnoB2Yfm-A_VqEdZyiPa2aY6WBLtw5t-o5PmLsah1XVSZby2CTsbwo4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ws1-ZTeFrUf1if6G47p3ceZbFTuDm4MnS9x73OGNANPPiwEQWvfzrA>
 <xmx:ws1-ZcPmiCdT-613qCZ6YAKhZHwF6tzJoA8e24flU5i69KPUPMl2bg>
 <xmx:ws1-ZVkPSCvcMZWUG-R95jk82yag-iF6gwXuEywmBxL7Kv9tYyYwnA>
 <xmx:ws1-ZW1gZYiM2uihDtWTXz-r74Ww_jQ5ydtxvKZYhwyCZDFVeo2aWQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:25 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 6/8] firewire: core: detect numeric model identifier for
 legacy layout of configuration ROM
Date: Sun, 17 Dec 2023 19:30:09 +0900
Message-Id: <20231217103012.41273-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As the part of support for legacy layout of configuration
 ROM, this commit traverse vendor directory as well as root directory when
 showing device attribute for node device. This change expects 'model [...]
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rEoPv-00048Z-GH
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

As the part of support for legacy layout of configuration ROM, this
commit traverse vendor directory as well as root directory when showing
device attribute for node device. This change expects 'model' attribute
appears in node device, however it is probable to see the other types of
immediate values if the vendor directory includes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c  | 57 +++++++++++++++++++++++++--------
 drivers/firewire/csr-api-test.c |  5 +--
 2 files changed, 47 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 14c7461c05f6..dad5c9937b78 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -49,6 +49,22 @@ int fw_csr_iterator_next(struct fw_csr_iterator *ci, int *key, int *value)
 }
 EXPORT_SYMBOL(fw_csr_iterator_next);
 
+static const u32 *search_directory(const u32 *directory, int search_key)
+{
+	struct fw_csr_iterator ci;
+	int key, value;
+
+	search_key |= CSR_DIRECTORY;
+
+	fw_csr_iterator_init(&ci, directory);
+	while (fw_csr_iterator_next(&ci, &key, &value)) {
+		if (key == search_key)
+			return ci.p - 1 + value;
+	}
+
+	return NULL;
+}
+
 static const u32 *search_leaf(const u32 *directory, int search_key)
 {
 	struct fw_csr_iterator ci;
@@ -253,27 +269,42 @@ static ssize_t show_immediate(struct device *dev,
 	struct config_rom_attribute *attr =
 		container_of(dattr, struct config_rom_attribute, attr);
 	struct fw_csr_iterator ci;
-	const u32 *dir;
-	int key, value, ret = -ENOENT;
+	const u32 *directories[] = {NULL, NULL};
+	int i, value = -1;
 
 	down_read(&fw_device_rwsem);
 
-	if (is_fw_unit(dev))
-		dir = fw_unit(dev)->directory;
-	else
-		dir = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+	if (is_fw_unit(dev)) {
+		directories[0] = fw_unit(dev)->directory;
+	} else {
+		const u32 *root_directory = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
 
-	fw_csr_iterator_init(&ci, dir);
-	while (fw_csr_iterator_next(&ci, &key, &value))
-		if (attr->key == key) {
-			ret = snprintf(buf, buf ? PAGE_SIZE : 0,
-				       "0x%06x\n", value);
-			break;
+		directories[0] = root_directory;
+
+		// Legacy layout of configuration ROM described in Annex 1 of 'Configuration ROM
+		// for AV/C Devices 1.0 (December 12, 2000, 1394 Trading Association, TA Document
+		// 1999027)'.
+		directories[1] = search_directory(root_directory, CSR_VENDOR);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
+		int key, val;
+
+		fw_csr_iterator_init(&ci, directories[i]);
+		while (fw_csr_iterator_next(&ci, &key, &val)) {
+			if (attr->key == key) {
+				value = val;
+				break;
+			}
 		}
+	}
 
 	up_read(&fw_device_rwsem);
 
-	return ret;
+	if (value < 0)
+		return -ENOENT;
+
+	return snprintf(buf, buf ? PAGE_SIZE : 0, "0x%06x\n", value);
 }
 
 #define IMMEDIATE_ATTR(name, key)				\
diff --git a/drivers/firewire/csr-api-test.c b/drivers/firewire/csr-api-test.c
index 2430891c5dcb..7278e7b927a8 100644
--- a/drivers/firewire/csr-api-test.c
+++ b/drivers/firewire/csr-api-test.c
@@ -199,8 +199,9 @@ static void csr_api_legacy_avc_device(struct kunit *test)
 	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[0].attr, buf), 0);
 	KUNIT_EXPECT_STREQ(test, buf, "0x012345\n");
 
-	// Model immediate entry is not found.
-	KUNIT_EXPECT_LT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+	// Model immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xfedcba\n");
 
 	// Descriptor leaf entry for vendor is not found.
 	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
