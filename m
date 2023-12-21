Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F8C81B89B
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQE-0003XI-Lj;
	Thu, 21 Dec 2023 13:49:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQA-0003X3-Ng
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PBp/kI0n0J8XwNjRh8pLSTFV6N9OxHCw9BU3vtXvG80=; b=Nmfk/KeRIFLL/dwH6kXWHAm/NU
 knxDSo/Eec8LkT1u9mI1vq6RcY4HL4/dKd3F2AwZFhaa26mI+vZgwkSDDDvPCZ9kBWtmRWSN98+bk
 qkBFfysQsPv6Peaeb4Dqq2ohWDq23XzSqwvONt70+GuaNDT2d6E1FQQRibeZjwayZQqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PBp/kI0n0J8XwNjRh8pLSTFV6N9OxHCw9BU3vtXvG80=; b=RDl9o9ArLAkkMorBR1vo8SaQHv
 Z1kHDXtDpWq9RqsGEAX1lz6C7p4RywFSKCveqN/AoNec7wGp4PupE9INrM6yqVBkV8EPirGJz7MW5
 i4PNvmq36ISD61zpaac2VCSc7ErVUAtqyg3ozzpzSKmLY6Wl9ScLq0vBPfjOk22eDE+I=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQA-0002nj-Br for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:07 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id BBDAC5C0293;
 Thu, 21 Dec 2023 08:48:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Thu, 21 Dec 2023 08:48:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166535; x=
 1703252935; bh=PBp/kI0n0J8XwNjRh8pLSTFV6N9OxHCw9BU3vtXvG80=; b=H
 IuDvn01LqcWi0C3Hd7AERs4UJmkkz+qSxPdbfFy7Cj4V3gRtcWHb/QU57t50cLFa
 mKT32d7aPDy8Zxhs1kk1+MkieEyOHMe780GJKhvjNMPY5aeWelWt9RxRe4JuW02m
 9kv5SVizWuW5IcspWKH/lnUCLSvoeaG2o+gQRjIRGcceEnzzsCmuY84ZQtjrSlwj
 lANPEMs2c+6fL3LDLsQMXDHG8AqcxZRQZWgMAr9ZWpMBLPfk5PfdJsEHWklW3QKw
 6ymO9Y7gPlymj6K9/JVFImx5Tn+yGzyV2l9RLsPYt8eGM0x+sCnxt8qliRG7mqv9
 7o5YzaXnM5zC58bizd+sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166535; x=
 1703252935; bh=PBp/kI0n0J8XwNjRh8pLSTFV6N9OxHCw9BU3vtXvG80=; b=F
 oavjJCir1WITV2vHJtlHCl8BENh1qh45/7Ja8Sbi4sntAGLcuUcnmP9zVb0yGfHW
 EFBBooPISK45ABDBJDmn1nV4asER9rWWZzFM5UH/scwEKZnXTlM2oewfOQduUWuC
 P7JZaX7RnVoqGRzuFWTVXHlIthlSwMUWkwG4P3oVTgvZ1ncjXXVYW/2cHLEwIxgW
 qYfbwGpy7O9a9U0Q1KY1eADu12Ic6pcL/q+WU/+Hsx1ikOYulE/hVxwQOVbtBADv
 RSDAJyK7tatHn+fN1acHwuzcZudsdFd3XSXiUgd0xRPkrToh88ZSmi1nQV+NkAha
 ncTx2C29nfs8m0r3tfZKQ==
X-ME-Sender: <xms:R0KEZQIJozOfSEAHXlPbkxSqFPpP0DJHnU3wpmnAJdIIE8y_9osolg>
 <xme:R0KEZQK-UMi0E4a8Dzaz1alrtA2G_BBFGuKHCNUQIGHQNr6EkPIAlr6LbInlvd7sY
 hZrGdWbmH6iY6STFbc>
X-ME-Received: <xmr:R0KEZQsLT7LpCqZpBqfRgFuj83AjnfqkRCZjt-mFDcSp-EtqDt2qq2wagW6W8dUXGEiE24US9uBA8-WZ_AgYSLd4O7aoXfSbOHTwIxteRdgi5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:R0KEZdYBm-zm5HnnU2hnaRVdOfBI5SP2UDe43lL6-q4Y_XreMuxZ7g>
 <xmx:R0KEZXbQMYO0qr1rPBAHDblH5HRWDAWhbcElAVnLsixtqYmEVxoQkA>
 <xmx:R0KEZZBiLp-tK2Zrc414daBKWom0qxd7RPxg6aAm0wY8ekziDWVLqw>
 <xmx:R0KEZewxZA_X984LxrBWeqio26V_ILP4bt-uIhj57LBI7-SUSafbaA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:48:54 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] firewire: core: replace magic number with macro
Date: Thu, 21 Dec 2023 22:48:43 +0900
Message-Id: <20231221134849.603857-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In IEEE 1394 specification, the size of bus information block
 of configuration ROM is fixed to 5, thus the offset of root directory is
 5. Current implementation to handle device structures has the har [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGJQA-0002nj-Br
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

In IEEE 1394 specification, the size of bus information block of
configuration ROM is fixed to 5, thus the offset of root directory is 5.
Current implementation to handle device structures has the hard-coded
offset.

This commit replaces the offset with macro.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 96b0b43da863..315a2fe41643 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -31,6 +31,8 @@
 
 #include "core.h"
 
+#define ROOT_DIR_OFFSET	5
+
 void fw_csr_iterator_init(struct fw_csr_iterator *ci, const u32 *p)
 {
 	ci->p = p + 1;
@@ -135,7 +137,7 @@ static void get_ids(const u32 *directory, int *id)
 
 static void get_modalias_ids(const struct fw_unit *unit, int *id)
 {
-	get_ids(&fw_parent_device(unit)->config_rom[5], id);
+	get_ids(&fw_parent_device(unit)->config_rom[ROOT_DIR_OFFSET], id);
 	get_ids(unit->directory, id);
 }
 
@@ -259,7 +261,7 @@ static ssize_t show_immediate(struct device *dev,
 	if (is_fw_unit(dev))
 		dir = fw_unit(dev)->directory;
 	else
-		dir = fw_device(dev)->config_rom + 5;
+		dir = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
 
 	fw_csr_iterator_init(&ci, dir);
 	while (fw_csr_iterator_next(&ci, &key, &value))
@@ -292,7 +294,7 @@ static ssize_t show_text_leaf(struct device *dev,
 	if (is_fw_unit(dev))
 		dir = fw_unit(dev)->directory;
 	else
-		dir = fw_device(dev)->config_rom + 5;
+		dir = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
 
 	if (buf) {
 		bufsize = PAGE_SIZE - 1;
@@ -446,7 +448,7 @@ static ssize_t units_show(struct device *dev,
 	int key, value, i = 0;
 
 	down_read(&fw_device_rwsem);
-	fw_csr_iterator_init(&ci, &device->config_rom[5]);
+	fw_csr_iterator_init(&ci, &device->config_rom[ROOT_DIR_OFFSET]);
 	while (fw_csr_iterator_next(&ci, &key, &value)) {
 		if (key != (CSR_UNIT | CSR_DIRECTORY))
 			continue;
@@ -691,7 +693,7 @@ static void create_units(struct fw_device *device)
 	int key, value, i;
 
 	i = 0;
-	fw_csr_iterator_init(&ci, &device->config_rom[5]);
+	fw_csr_iterator_init(&ci, &device->config_rom[ROOT_DIR_OFFSET]);
 	while (fw_csr_iterator_next(&ci, &key, &value)) {
 		if (key != (CSR_UNIT | CSR_DIRECTORY))
 			continue;
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
