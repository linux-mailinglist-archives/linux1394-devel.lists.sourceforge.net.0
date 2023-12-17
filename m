Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B63C8815E7C
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPy-0007XT-Qu;
	Sun, 17 Dec 2023 10:30:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPw-0007XH-Bt
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z73jY6BHHBYZhY9lJ5vLyunAPVGK9kE6VxjU8LqOq38=; b=QqsQHzz5ETy3ATbfx04bPLkFdW
 yfHP9i3kZyAiU62EOAMGsvxZ/BYCztTfCvIVSPMCCP5ZFu5mPi+SrWhD2PrVjwsjiiwPfjKzqLI7/
 7HC30mGAZpzPtPIDTFvPVPDTOmWuoFv2bWNfhQ+Oap5B6z9bAeZzRUNFgDpDgjBfLakI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z73jY6BHHBYZhY9lJ5vLyunAPVGK9kE6VxjU8LqOq38=; b=KUWWIkn/HqE0LZ7PNZOwNFDPcu
 Js06kiUSt7EdSsbOdsMdmhtHqSV1F4NIbfoUvbVBi+D6InlPx0PgreBLOvi43AYKzZmefLtQo6/VF
 sNyT2eB4NRx5mCGfRs2MWwUAwj4XXIEgccEXMW6b2j7R7Ut0lgrpCUL3lyVD+oZCLnZE=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPv-00048a-Gw for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:40 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 4CBB55C0126;
 Sun, 17 Dec 2023 05:30:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 17 Dec 2023 05:30:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809028; x=
 1702895428; bh=z73jY6BHHBYZhY9lJ5vLyunAPVGK9kE6VxjU8LqOq38=; b=Q
 xVvzmHNtLvMdgHrGxjwkBlFWXsuhhYJZaIIFCaKiGA/TzDXFuymTP2S+TDIKVNzz
 vPVa+UR4Ey13PcFMasMPcvpggQDTI33dlZfhQ0xVC8vsYlcQnF11gxVNTZUCiIyG
 7KmHgE3cu52fn0rl8M/7th2ESS4oOJgrjyakhb1naFZKD9Fuor868jUJTxRTaNQ2
 MYtwfXl3jmAe3xJ3vrtnDGfdx/yDkb1Y7PJhKJI1sCJWR+T63Gin9LplhXW8jzBH
 wPyI/eKYTT4xzkxDQOdmq/MwwmojxzCUDVybBCkz7x+94MC5tRWcTLx4K4J0DL9d
 dgpUZfYXy6/wWAA0tthxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809028; x=
 1702895428; bh=z73jY6BHHBYZhY9lJ5vLyunAPVGK9kE6VxjU8LqOq38=; b=r
 Iq1W5qfdH6+UiUFI6R6DIKEGU/rj7RiVJTS54GjkUqBl/rk9gsj3rBGqNJspMuVQ
 LJgHTfX23ssDoh/H9C+zpNsRDN4l49ncGyDNRInA/AcTIbsnf6aiM5BFZTJUjKWT
 iwOHEbv52l+k3Z2Qz95eovnI9DkwVyN82Nw+JK4MsD+yDA/PibvBymA/LKMYq5BK
 Vg1fdjZc4PJrMSGrbA/ylZZNu/rCibyx7lyPJN3PW0JcEfmLZ5kLB848qJIk9Kzn
 CMc3LAkmU8dTpOLAu5DacPCYS5yAvL1+aVtbxAdQdqqXzeMR6BMOVQ0aar5LwD9J
 Zp27HMvM6fKt+7TfYxdyw==
X-ME-Sender: <xms:xM1-ZVYM7kXFYKpu4np6WaJz1C-Z5fTY6Yvk1pw8iggA77bMGqdJ_g>
 <xme:xM1-ZcagruD_GIXPtFSMdNDUmXa4kVeSP3NfYJHCAfssFJ390tsBs1sgD8Ldp6Pmq
 pjpbOD1-EWtmCKJVU4>
X-ME-Received: <xmr:xM1-ZX-wtHCnvAJmItejaAwp-kjT3bw4c5fCdhzKhLs1rLP24WaTGUb6YhUz9zkUq0JshlkAm11wbJl1-tK0GnYu0-Z0QhDEB94TbeFhuG3iCKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xM1-ZTqseG_u60pqxb8Y-267sAAIKMQczHEYhYM2Xb2k8spjUlQ9Iw>
 <xmx:xM1-ZQo12S7NxOOtAk4eZXd_VEDJpqnP0kfDdIj3Ee7QHAI98mc7ag>
 <xmx:xM1-ZZQtQSrV5eubT0h8Qg90gDFOwI06-SuP6PDmdGSHkWtbesn6pg>
 <xmx:xM1-ZdBEP1ekeawJFyQR_r6gBf3KKt_qQpKi4GZLixK5X6F31765dg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:26 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 7/8] firewire: core: detect model name for legacy layout
 of configuration ROM
Date: Sun, 17 Dec 2023 19:30:10 +0900
Message-Id: <20231217103012.41273-8-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1rEoPv-00048a-Gw
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
device attribute for node device. This change expects 'model_name'
attribute appears in node device, however it is probable to see the other
types of descriptor leaf if the vendor directory includes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c  | 23 ++++++++++++++++-------
 drivers/firewire/csr-api-test.c |  5 +++--
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index dad5c9937b78..f7a11004f972 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -315,17 +315,25 @@ static ssize_t show_text_leaf(struct device *dev,
 {
 	struct config_rom_attribute *attr =
 		container_of(dattr, struct config_rom_attribute, attr);
-	const u32 *dir;
+	const u32 *directories[] = {NULL, NULL};
 	size_t bufsize;
 	char dummy_buf[2];
-	int ret;
+	int i, ret;
 
 	down_read(&fw_device_rwsem);
 
-	if (is_fw_unit(dev))
-		dir = fw_unit(dev)->directory;
-	else
-		dir = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+	if (is_fw_unit(dev)) {
+		directories[0] = fw_unit(dev)->directory;
+	} else {
+		const u32 *root_directory = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+
+		directories[0] = root_directory;
+
+		// Legacy layout of configuration ROM described in Annex 1 of 'Configuration ROM
+		// for AV/C Devices 1.0 (December 12, 2000, 1394 Trading Association, TA Document
+		// 1999027)'.
+		directories[1] = search_directory(root_directory, CSR_VENDOR);
+	}
 
 	if (buf) {
 		bufsize = PAGE_SIZE - 1;
@@ -334,7 +342,8 @@ static ssize_t show_text_leaf(struct device *dev,
 		bufsize = 1;
 	}
 
-	ret = fw_csr_string(dir, attr->key, buf, bufsize);
+	for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i)
+		ret = fw_csr_string(directories[i], attr->key, buf, bufsize);
 
 	if (ret >= 0) {
 		/* Strip trailing whitespace and add newline. */
diff --git a/drivers/firewire/csr-api-test.c b/drivers/firewire/csr-api-test.c
index 7278e7b927a8..779146d0cfba 100644
--- a/drivers/firewire/csr-api-test.c
+++ b/drivers/firewire/csr-api-test.c
@@ -206,8 +206,9 @@ static void csr_api_legacy_avc_device(struct kunit *test)
 	// Descriptor leaf entry for vendor is not found.
 	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
 
-	// Descriptor leaf entry for model is not found.
-	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+	// Descriptor leaf entry for model is found.
+	KUNIT_EXPECT_GT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "ABCDEFGHIJ\n");
 
 	// For entries in unit 0 directory.
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
