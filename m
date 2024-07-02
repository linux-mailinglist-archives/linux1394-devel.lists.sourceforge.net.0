Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5810924B83
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jul 2024 00:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sOlrt-0006er-9r;
	Tue, 02 Jul 2024 22:20:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sOlrr-0006ef-7x
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ody5HCrdHgBlLUVNyBxe9FK0hNGkd1ti0Yfpg/IrLj0=; b=lCs+SWAR94wpwE7kINaDhK5cBr
 Wa1yZ7rpNVzASHd7BldtvznfNfLIuN+ukKpE76ViMqQAG7Via0tSkDh2kordOjjzEUBk7oMDP4fRa
 VIsvWh1sxCSiySJXigq33kr7B4MrS4vhheXpd5vG2aNKUK+B9kHP/UC9rtr5ohWkXno4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ody5HCrdHgBlLUVNyBxe9FK0hNGkd1ti0Yfpg/IrLj0=; b=iGia/IlE4TnFTCf4/D2HIZ6dty
 qfyELue8Vzs0invogFqAdkuCJmw5D164QZlKwNM1BUi+I2kw30DmB5wXzUN94Tzqy5xQ3DdsJa6wm
 soRuOA4ThTM4qf5fagVYyCfvGR62hLvFcvStXOpFqKM55Lbsp6GwhWTI87PaMZQAynpE=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOlrs-0008RS-C2 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:56 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 0BCC113802A7;
 Tue,  2 Jul 2024 18:20:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 02 Jul 2024 18:20:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719958845; x=
 1720045245; bh=ody5HCrdHgBlLUVNyBxe9FK0hNGkd1ti0Yfpg/IrLj0=; b=Y
 9PSy9V9NLsyVpuHiZW54jxXen4AvlvDfSlNRHKO70vfnTX38pUtwQHqrFroIzLIG
 9Wfqor5dkYX+4sOf1940a6fil8oC/UGcrLH9fEwTjkihTGDEFW1ExgPWIR1JwW73
 PQPcKH1pEVCggJYEtk39P8aRheK4dsD3bl7vdRWLoUWJY+oqYizj3O3o6IFUJsxK
 mrA3UMzegYLJdqwcHT64CQegZnK23q9xoaP1dHd1xxPyJlcVTD1VtL9BZVbUZvC1
 iGKCRlzxNg9ZU9jlUf1+qk2UjBqUnPODqJwVgR/GKHUunkkthIXQk1OWi8WwNHr2
 985Q9EIXtOClrH1PaV+fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719958845; x=
 1720045245; bh=ody5HCrdHgBlLUVNyBxe9FK0hNGkd1ti0Yfpg/IrLj0=; b=c
 94TL3NOb/yhWq3K/UtRbcAzGOXjMF5XQaP5nyIgWTC49MHa7n5SKWsrBKL4lyxpi
 E0JJofEQBGnCgT5IPIzcn8Q5gqQfZudMGZDKQh2HYwgA8VUFCD+bEP2eFMgqeeXP
 CO9PiOZi6t5w5mmaleNQzkxF2j9sCj0dtbhgWZOW2EVlLl9N14eexxjBIPJ+Fmvd
 7tLbuKS79bPeFUUfWCpgiw5iJMWgf+XKpHGaZQ9dhD+ltg2Pb3Oed/iYJerYcthf
 +9KsmnNbJZ5gyt+SUEWMTrvYP1mwI0+h4H2afIRbaunWzUsXs3jL91BAYRiuiBzX
 usaJw26t7CG3HFA6ATL8Q==
X-ME-Sender: <xms:PH2EZmHsmIGWWoAyp3YEXZB1PAFZ-GlaCo59i0l-toijSm3RywS88Q>
 <xme:PH2EZnXn3eFWOyyPGYvlfmIsfWIrMbqaPRzAn3rnRo-gl-DlZ_-EKyDDvTJVWJqhl
 EcZDKrczer-EYvKorw>
X-ME-Received: <xmr:PH2EZgIDq1bX6DMydoxB9OEKo2QofP6ZwH55BXV37xOm9ZAAnvhh2JtWtTtmFabCOifBbyXPYcRHkajrbw_rg2zPCGBhpaQO4yRT4azFJcGuKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:PH2EZgGAP1Id4M5aJzQ6uKmoG6vPkDjaqc-R4Pbg_-zAVqCsV1bnIA>
 <xmx:PH2EZsUqOi0PLDqq8M_jiKyoylZkxHUSKGvx08KKQ3moUvW_DbMjvg>
 <xmx:PH2EZjPQs0huHzBscjuYVekDRHqXDDZSb05NJ3yXHRAScJhoUTY6_A>
 <xmx:PH2EZj0JPx0awyZnEXkw1TBxGiW47PKV3VV_VU8nTc0-w41zFUqm7w>
 <xmx:PX2EZpjrUzvSzVTJQxndpEmAWd9Qq7fvehswmdajeCp7asm-JvIVY6Pg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 18:20:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] firewire: ohci: use inline functions to operate data of
 self-ID DMA
Date: Wed,  3 Jul 2024 07:20:33 +0900
Message-ID: <20240702222034.1378764-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The code of 1394 OHCI driver includes hard-coded magic number
 to operate data of Self-ID DMA. This commit replaces them with the inline
 functions added/tested in the former commit. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 12 +++++++-----
 drivers/firewire/ohci.h
 | 1 - 2 files changed, 7 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sOlrs-0008RS-C2
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

The code of 1394 OHCI driver includes hard-coded magic number to operate
data of Self-ID DMA.

This commit replaces them with the inline functions added/tested in the
former commit.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 12 +++++++-----
 drivers/firewire/ohci.h |  1 -
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5b90ca72fa64..c95f26c74e2b 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2003,7 +2003,7 @@ static void bus_reset_work(struct work_struct *work)
 	struct fw_ohci *ohci =
 		container_of(work, struct fw_ohci, bus_reset_work);
 	int self_id_count, generation, new_generation, i, j;
-	u32 reg;
+	u32 reg, quadlet;
 	void *free_rom = NULL;
 	dma_addr_t free_rom_bus = 0;
 	bool is_new_root;
@@ -2028,7 +2028,7 @@ static void bus_reset_work(struct work_struct *work)
 	ohci->is_root = is_new_root;
 
 	reg = reg_read(ohci, OHCI1394_SelfIDCount);
-	if (reg & OHCI1394_SelfIDCount_selfIDError) {
+	if (ohci1394_self_id_count_is_error(reg)) {
 		ohci_notice(ohci, "self ID receive error\n");
 		return;
 	}
@@ -2038,14 +2038,15 @@ static void bus_reset_work(struct work_struct *work)
 	 * the inverted quadlets and a header quadlet, we shift one
 	 * bit extra to get the actual number of self IDs.
 	 */
-	self_id_count = (reg >> 3) & 0xff;
+	self_id_count = ohci1394_self_id_count_get_size(reg) >> 1;
 
 	if (self_id_count > 252) {
 		ohci_notice(ohci, "bad selfIDSize (%08x)\n", reg);
 		return;
 	}
 
-	generation = (cond_le32_to_cpu(ohci->self_id[0], has_be_header_quirk(ohci)) >> 16) & 0xff;
+	quadlet = cond_le32_to_cpu(ohci->self_id[0], has_be_header_quirk(ohci));
+	generation = ohci1394_self_id_receive_q0_get_generation(quadlet);
 	rmb();
 
 	for (i = 1, j = 0; j < self_id_count; i += 2, j++) {
@@ -2102,7 +2103,8 @@ static void bus_reset_work(struct work_struct *work)
 	 * of self IDs.
 	 */
 
-	new_generation = (reg_read(ohci, OHCI1394_SelfIDCount) >> 16) & 0xff;
+	reg = reg_read(ohci, OHCI1394_SelfIDCount);
+	new_generation = ohci1394_self_id_count_get_generation(reg);
 	if (new_generation != generation) {
 		ohci_notice(ohci, "new bus reset, discarding self ids\n");
 		return;
diff --git a/drivers/firewire/ohci.h b/drivers/firewire/ohci.h
index d83fd4731d56..71c2ed84cafb 100644
--- a/drivers/firewire/ohci.h
+++ b/drivers/firewire/ohci.h
@@ -31,7 +31,6 @@
 #define  OHCI1394_HCControl_softReset		0x00010000
 #define OHCI1394_SelfIDBuffer                 0x064
 #define OHCI1394_SelfIDCount                  0x068
-#define  OHCI1394_SelfIDCount_selfIDError	0x80000000
 #define OHCI1394_IRMultiChanMaskHiSet         0x070
 #define OHCI1394_IRMultiChanMaskHiClear       0x074
 #define OHCI1394_IRMultiChanMaskLoSet         0x078
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
