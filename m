Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F28E9946ECC
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saasl-0004t6-4N;
	Sun, 04 Aug 2024 13:02:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasj-0004sr-Lh
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=lR3p5umsRutGu0OdRtpM3wh8FL
 4ud8YbUquxZ+7B7pz6ulorjmGJDkpdq87TRWjKpYPJnlAKBvsXnj2MH2bXIwy5z7naZdWC5lF9wnj
 Qevy/oWfYePeX2nC5mPMhN57Q7zYwnrOoH7+TgUVYZ2Wl1NzGFp0cjlQgUJIU0HwnbSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=BCy73s1zyYO3Hl3mcLydzT956U
 ++778WeW6/w7DTdh1HXtAkXlNxHnRglvvgq6vxY//dlcu84LFX0gc2hACfxJZ4kJcd9imAal+k4I7
 diOaQebhRlIZk+KOsvR05haHLEln92HmbuiBbQbZEeB0YPAs3W8s3STFddLfokOUr6tI=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasi-0001DS-Is for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:41 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id EACC413807E7;
 Sun,  4 Aug 2024 09:02:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 04 Aug 2024 09:02:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776554; x=
 1722862954; bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=h
 cTiCBRMHcnfZcrEhwQIemboRFgT4OhvxPVVIuUd0kiYkF/vy/IlXXVeveEAb2szV
 kXuXhbWDhRN3P8+8KkMScvxKf854rBUNVjEpepAj32Y7T1OUhzbu9Xw8V8OG4pjG
 vCz9Q8kpNzyuEnOPQ1r8c8p9dAIu1ZCdOmo/8CEzhXP/DqVTWxVzR7scigNnNi64
 38WBCz4JqEMKB2rjwF9N4sOh3wPjbEtqqfo89CqXVlCWBoPxi01qJm+65kxae7Iu
 0PuGHAll/sWn0m9HM5RpZExKHBUbjse6rw+f5pow9FeVF2Ou+VoQWncQueVk2kqe
 pZ+XedhDE0EkopN/fiulg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776554; x=
 1722862954; bh=umV/dIhWSMe39OeV812KLlWHxNO+f3xTH4ZsEWLWI7U=; b=T
 gLILsy23ycuxII2aVp9gPz8CbzA7O7MHV5dIwDQeOchKOQnXIow7lsl5UBObO3Ij
 xtZcBG9tfQHJDmXerFiNsknfjFkWRD0p7RXkTLKqVSA+veuxdwR/c3nL7a3iyPA5
 62SnIY03plDbQsFqS/Q7Q26uZgSiESpsvF31jSJBnxGxs+koViENMdKVx6xwiCVW
 hgbafr0aVSysqRrob4e2NkzZ6Kf/lF3aV2N61fG8UdSjrlW17wu9Iw7yq+U1v2Zn
 T8Q0ZAbg3G9UgG/EHoNy4nrRrdLZCi7/Otj8U+UyVdlPdaXRnzZ4I0c5SoIOL9hq
 e8Hp2xaQccyLwhCOpI0BA==
X-ME-Sender: <xms:6nuvZvgpjWESoyt_ELMGRaiuD4nzodpBit02Hq0sFKwqTX_sFOvBzQ>
 <xme:6nuvZsDKZWUCOL6yrVDBp809S_a_5JO0wuh9XwXssb9y03ziroI3ExwZIkIIWZVaC
 saWAH51vsu25cF22cE>
X-ME-Received: <xmr:6nuvZvEr4ABNBfRdvjha5ojza9eOU4FmlgOvBmPu1crU2Otvf03H6BD1oUvInayUeaHomfSujxd8mo47a72FBoIv5TF95Cm0oSImtIYy7YQ-pg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:6nuvZsSn_IvbPFgGyV4Dg84kRLF8BsZFcNB5YqisWxyfAIwcOT20Tg>
 <xmx:6nuvZsxKQXaePv4-3wX6GqoXaswKsXEQFebH4bH9-KOQQuCLH9a_9w>
 <xmx:6nuvZi699l9f6HRwGuCC2VmOKDxJsI4NK7qqzxIdhZDl5-rjYb3wcw>
 <xmx:6nuvZhxyC0feluFLQS3LdiQtaUk83vQapzDP8LM-Cnaytk5sDdi5xQ>
 <xmx:6nuvZn9lJgyAWv6ktOU8UKBP3Qgv9DtooDRIO3Rh7lkKBWYpYFPpbvWM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:33 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 04/17] firewire: ohci: use guard macro to serialize accesses
 to phy registers
Date: Sun,  4 Aug 2024 22:02:11 +0900
Message-ID: <20240804130225.243496-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasi-0001DS-Is
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
