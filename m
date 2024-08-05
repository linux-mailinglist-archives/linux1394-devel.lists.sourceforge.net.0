Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D6D9477A4
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUI-0007lX-78;
	Mon, 05 Aug 2024 08:54:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU7-0007ez-26
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=cmR+7cxjjXMCAHVKblMQZWsR25
 wBYm+hdwzSL9RNZqg5mMREKhjQfa8hrSbs6eWkWWKbakbCatqTKDOLwOm3eUWtunhn0zvhZbT71/z
 aJeQRVLPpe+6T86TzT1TVKT4gsEmMxMY66FgBk3wHEO3hvGQoX3ryUVDHHOR3HplI+0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=D8uzO/7VsZsI/Bu4cVQ0ZPm1Z7
 zKOktEoY6jWSPwH3EJoWdB8Yvo2Qc+V5IwSJfBFOMWyFdFFVte0TgwL3OdVg2mc7Cs1u4SH+an445
 LdkIoLjawKywoIT/muT67vlSpgBcNvonMhPmuRElNqHu7POs06fSIIctWqRz29A4hHAo=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU3-0002pv-Uv for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:28 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 614531151CA6;
 Mon,  5 Aug 2024 04:54:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Aug 2024 04:54:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848057; x=
 1722934457; bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=F
 6wgqHZXg39kTnm3T8j5MRN6vGAeUXp2OzE8Y0e+DEq9klB7sl9hbs84ua+dbe9oS
 GXTJepztE2mFJsGLSZ6XMQUmdL//kkFt3C0xo4m8J1Y6//kIWCPcZGypuF7S8uy4
 tWS79sVwWi5C3+kG9R/QepEApYZjVWi9yyEIbvY3+LHXvgIuCNnM1FFPSYMCZzzN
 jlwIdcGkTbf1r/toTyXL1IMBDtwvP7UcOY+XpEIoqficDuYKjltm+nMjFj5ZZVVk
 c0iFPxJBawM1HsBunt+J7C7xUVYBw1jB4EcP0UoByplzWXY0IV7qg4L1V7MVLy0A
 OpBOA8SA6DuoGQbbrSOTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848057; x=
 1722934457; bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=S
 B9bGZByiULOj/sr3qcsKlDy78dwcDrYDB2EH4hcusTdb76Rfx8ldEpgTxRB/KV/O
 QVScxOp44U8K27FhsNqpBw5SAbZBHizuTG8H/g7vrfMoDoZSWd30O34pwz0xppTm
 qAABLlN0x9Aze7emnYBCjFWIDYxCYfnwY8H5PZfBmI0i3zIq3cM/NXqftEHjodWO
 X83HrIg4KiSkJE2NiCow1jYnTir+SEB3IjNFwWO0F9ACyfdKRIWQcZcc+PthwGFe
 sxTTzyaHgukJLpmuwjaBVFPIOULon9OEDdqCBHgO2JIVwyRKyv4lX26fcznpa8z/
 lEx7Xpp5CT8j5R//J93bA==
X-ME-Sender: <xms:OZOwZvNvko3_KwiN9GJFY29zskWLYi30wsXpORUr7hXGhf8f20Xq1Q>
 <xme:OZOwZp8Y6A0yN1Pvt6IKebyI7wcsctQTRTdjU18gFfxh8bpj3tCnafmC4dWQcu9LJ
 5tlQ6ILhjrImEG0Xl0>
X-ME-Received: <xmr:OZOwZuSt5f2PBz8O7GeTjKGTcRX_3VWE9K9rcd-4hu_UFLUfP13FBTECV78Kz6GjIQBSU_IB0W3WkuC-Uz4VEMAm_CTjPuFQF9429vlI7as>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:OZOwZjtOGcBxyTWeFldp-biqUVtD4qJYQOW3x4kERjRhbgs1Ig8GaA>
 <xmx:OZOwZncVtwtYAJR_xHE1gx44ME1UNPD1fKtBHA7R5CuCiBXU7-z9Zg>
 <xmx:OZOwZv2p1_aS0pT8jacpxEqKuJ6732tWG9zJJu2SSZuPCI3Fajgaqw>
 <xmx:OZOwZj9AZmohn-NLPUk9DmpAotr5XBEKUIx14DOWxz-BqlaUuP8LSw>
 <xmx:OZOwZoq67PjfYZFIrpb4UNypC1KeTI-drGyBXgKUKD2dMFjfdF990MEp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:16 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 04/17] firewire: ohci: use guard macro to serialize
 accesses to phy registers
Date: Mon,  5 Aug 2024 17:53:55 +0900
Message-ID: <20240805085408.251763-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver protects concurrent accesses to phy
 registers
 by mutex object in fw_ohci structure. This commit uses guard macro to maintain
 the mutex. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c | 71 +++++++++++++++++++++ 1 file changed,
 36 insertions(+), 35 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satU3-0002pv-Uv
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The 1394 OHCI driver protects concurrent accesses to phy registers by
mutex object in fw_ohci structure.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 71 +++++++++++++++++++++--------------------
 1 file changed, 36 insertions(+), 35 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 8f2bbd0569fb..1461e008d265 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -713,26 +713,20 @@ static int read_paged_phy_reg(struct fw_ohci *ohci, int page, int addr)
 static int ohci_read_phy_reg(struct fw_card *card, int addr)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	int ret;
 
-	mutex_lock(&ohci->phy_reg_mutex);
-	ret = read_phy_reg(ohci, addr);
-	mutex_unlock(&ohci->phy_reg_mutex);
+	guard(mutex)(&ohci->phy_reg_mutex);
 
-	return ret;
+	return read_phy_reg(ohci, addr);
 }
 
 static int ohci_update_phy_reg(struct fw_card *card, int addr,
 			       int clear_bits, int set_bits)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	int ret;
 
-	mutex_lock(&ohci->phy_reg_mutex);
-	ret = update_phy_reg(ohci, addr, clear_bits, set_bits);
-	mutex_unlock(&ohci->phy_reg_mutex);
+	guard(mutex)(&ohci->phy_reg_mutex);
 
-	return ret;
+	return update_phy_reg(ohci, addr, clear_bits, set_bits);
 }
 
 static inline dma_addr_t ar_buffer_bus(struct ar_context *ctx, unsigned int i)
@@ -1882,13 +1876,15 @@ static int get_status_for_port(struct fw_ohci *ohci, int port_index,
 {
 	int reg;
 
-	mutex_lock(&ohci->phy_reg_mutex);
-	reg = write_phy_reg(ohci, 7, port_index);
-	if (reg >= 0)
+	scoped_guard(mutex, &ohci->phy_reg_mutex) {
+		reg = write_phy_reg(ohci, 7, port_index);
+		if (reg < 0)
+			return reg;
+
 		reg = read_phy_reg(ohci, 8);
-	mutex_unlock(&ohci->phy_reg_mutex);
-	if (reg < 0)
-		return reg;
+		if (reg < 0)
+			return reg;
+	}
 
 	switch (reg & 0x0f) {
 	case 0x06:
@@ -1929,26 +1925,31 @@ static int get_self_id_pos(struct fw_ohci *ohci, u32 self_id,
 static bool initiated_reset(struct fw_ohci *ohci)
 {
 	int reg;
-	int ret = false;
 
-	mutex_lock(&ohci->phy_reg_mutex);
-	reg = write_phy_reg(ohci, 7, 0xe0); /* Select page 7 */
-	if (reg >= 0) {
-		reg = read_phy_reg(ohci, 8);
-		reg |= 0x40;
-		reg = write_phy_reg(ohci, 8, reg); /* set PMODE bit */
-		if (reg >= 0) {
-			reg = read_phy_reg(ohci, 12); /* read register 12 */
-			if (reg >= 0) {
-				if ((reg & 0x08) == 0x08) {
-					/* bit 3 indicates "initiated reset" */
-					ret = true;
-				}
-			}
-		}
-	}
-	mutex_unlock(&ohci->phy_reg_mutex);
-	return ret;
+	guard(mutex)(&ohci->phy_reg_mutex);
+
+	// Select page 7
+	reg = write_phy_reg(ohci, 7, 0xe0);
+	if (reg < 0)
+		return reg;
+
+	reg = read_phy_reg(ohci, 8);
+	if (reg < 0)
+		return reg;
+
+	// set PMODE bit
+	reg |= 0x40;
+	reg = write_phy_reg(ohci, 8, reg);
+	if (reg < 0)
+		return reg;
+
+	// read register 12
+	reg = read_phy_reg(ohci, 12);
+	if (reg < 0)
+		return reg;
+
+	// bit 3 indicates "initiated reset"
+	return !!((reg & 0x08) == 0x08);
 }
 
 /*
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
