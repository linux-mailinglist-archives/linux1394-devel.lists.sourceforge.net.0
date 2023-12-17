Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 313B6815E78
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPr-0007zB-Si;
	Sun, 17 Dec 2023 10:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPp-0007yi-4g
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/6Ta9woOfTDpfu4hjdamNnLTts8ODMKhVhLZw/OsZHE=; b=XwEhCJj3VTgV788Uv4ioQNYTcH
 Az2XfXMZir6wV4EOLh/OyK4hQ0dgRtXE92NrEy49zS6B/kVhwil0dLnhLXQJkq5j7Gfez3JVRuwFN
 dhfXv7DRUy3HUQEhiXBBz6MlQEfja1jBT77b7fymGYEZaarK/tEeanLKzA/NDdaQEVj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/6Ta9woOfTDpfu4hjdamNnLTts8ODMKhVhLZw/OsZHE=; b=aZFGecyo3d45Z0TM3MdEqeuE5g
 ndblpqK7RRG0U5GPNrhcsmoclhGXzvsaKNAr0usr1VFyE4CPrAGEA2bn7G3iFbBXTO1eBvC4ihc7B
 tnWLq/o718xlok7QYbfesal7Rz5rPYpvJzPT7Wxsl2nVTXhdrsr/RcTBnR6XBD0Q7T9o=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPi-00047D-5N for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:32 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.nyi.internal (Postfix) with ESMTP id 83F015C0113;
 Sun, 17 Dec 2023 05:30:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 17 Dec 2023 05:30:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809020; x=
 1702895420; bh=/6Ta9woOfTDpfu4hjdamNnLTts8ODMKhVhLZw/OsZHE=; b=u
 dElJpNmM8IX4CREWPjR1PnG8MwDSKDRHAVTZrKhneacCnqx+wKR/qZqdl+JoBY5C
 nJA8uoI+3jxPH+rJht0btFRsEz5/DutSaYyXc/G739V3sQtqOa0s/a/wvDfclrGr
 L4uzK3Zefs9hZysyXzwfDMloUVQgxakrFq6NkPWLThL0m3hjfdWDm5pQmwzRoZFL
 TrtcYg7rqP09g7UiQdQ41oxkzu2KSVb9cUg+Oh/FTNZtbaPcb+CtgRxoLC6XjgAr
 QsNuYq8UgAvS/a7tIoBqUcesbo+v2Ns/aVtQ+b9YmoYr5abr5O9g1Vv56uoswlPl
 158mjO6lsRK8VSDjUz/cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809020; x=
 1702895420; bh=/6Ta9woOfTDpfu4hjdamNnLTts8ODMKhVhLZw/OsZHE=; b=0
 iS9cBa2rjrrEO2hdjyh2xoBiMgmTZSLtPXEhg4/HDC5Fq3vXbQm5PIJlHS+XL5B1
 x//TzfsE+P17ep6LzDmddcNm50cIwZsqWqzlXJRrd1oF1GbYLfFSU9m47YlpGsVN
 grQMOcp9umLrx9K2RDcN+W587+WpcT1ItRYbYNuSMVwQNW9gfJTQvhE+spMAMfW/
 wDQBpLL3euQFDxc4OJS+qgs8YcCLymq0bSW6AgIqf2wtVyofSkWYiNQnmuPRCxOu
 DVUhSj91sYTb9zRXuWDjNVgcFVaxNhsapciEIpgqQE6YxbzyNDdIoYAtbg6UhN6g
 y3ko9UNv4buPzrKMj0F7w==
X-ME-Sender: <xms:vM1-Zdwve80hczddzxf7LQiTd20hEMY_VEXcchXCHWezT0P8VgIUQQ>
 <xme:vM1-ZdQkOVnYJBbhaT4LzLIOkB_zUjS4PBhS5iUJrHTK6aG3xyldfE_amWwDOYXT9
 4n7jJB-u6et5Kg-Op0>
X-ME-Received: <xmr:vM1-ZXV-Oxd1Lg4-Ey-CYMFfmJIXnR8pOa0NZss4dpSW7SFAq7HVn-VzqQM4p03tNWYEHZQuhweQrRd21xxI5BoD_2NoovRpqK7Y3gPKJRn3l7c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:vM1-ZfhhsabSmQsm9GBv-zL8aKmMcX5LprEB5DhUBH6iAlogK8PTiQ>
 <xmx:vM1-ZfBKb_TUpYC9M8wkBcB8iWiDCJLAvDTXD4cip0gRnmxIKNXTuw>
 <xmx:vM1-ZYIk3cY1PFUQWEBzyXMBN1aNcO43tt3UQA9bKoiOlY0BSCovFg>
 <xmx:vM1-ZU605fQyh3YEeMGRLleQXN-UYqrdZbIxaKiu2CHMlmhuI7ct3A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:19 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/8] firewire: core: replace magic number with macro
Date: Sun, 17 Dec 2023 19:30:05 +0900
Message-Id: <20231217103012.41273-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In IEEE 1394 specification, the size of bus information block
 of configuration ROM is fixed to 5, thus the offset of root directory is
 5. Current implementation to handle device structures has the har [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rEoPi-00047D-5N
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
index 16c32cb38f0f..137001f8a695 100644
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
