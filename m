Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBC93F6F4
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Jul 2024 15:47:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sYQiC-0007H0-E6;
	Mon, 29 Jul 2024 13:46:53 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sYQiA-0007Gr-C2
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U5rod4RFqqD1jbS5LRRa2T3sPIulvkc5tgqY5IiVoIQ=; b=LKfNqIqrjprdw6ezm4ADvJi4w+
 wC6FMZJganjq9eIZWApLuvUNlHW8dkyIAgFcyHesTHBescajy5qbSt7gcMX7eR3XjqcjU4HxIUK4P
 Qw5zwWF4XPd4xerfT2+Dgs6/xiHBoHHUeAfvMb7uAtIVcJf4LGxBAazRzbucokvFgLoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U5rod4RFqqD1jbS5LRRa2T3sPIulvkc5tgqY5IiVoIQ=; b=BprVRdfXRoTE9aZ+XjupeqwvTP
 6QU6Q/4+HLcTxza5SPShcyA0w80yVuk8hP7Anz9rzXrI/xccIXlLnYmLOVV9RazIRhbl2Kz9faFPv
 l/wwy9X10C7R4wmYg3YrKgNWK7/OPUUahbOMPyGARGwsvZqtfGyXi8Dr3d+OdcOoc20k=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYQiA-0000Lb-9j for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:51 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 9635F13801DC;
 Mon, 29 Jul 2024 09:46:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 29 Jul 2024 09:46:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722260799; x=
 1722347199; bh=U5rod4RFqqD1jbS5LRRa2T3sPIulvkc5tgqY5IiVoIQ=; b=r
 NoMVBIVIN9jiii48x1LG/QTqho54xKGnlT2/NCByyNPQLNm+hXllHuHW1pgniabU
 3ST42kxzKnp3jDdwRhZOdUHgUuzAGiQI7J201XV5+lQQo/d3K40PAmlLlS71wuMO
 H8JMuY0ZfTFL7YCIYwThKuNKbdnzVTryYcQ0BDB/LG6u9Jcib6Sr9xb/Uw4To5pj
 QOcVPltJScrvAG48w63NGAX9Lny+C0n29DAOf2zRsmNoeyCH7jFrg77QevwkkndP
 s9kbNs7zUn7YtOHN4epkcjrzNPap0OJLcmSAvPWel/KUb2YylijCe2uZcEIezrXT
 F35QA2n7MUziAvi1DUtog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722260799; x=
 1722347199; bh=U5rod4RFqqD1jbS5LRRa2T3sPIulvkc5tgqY5IiVoIQ=; b=K
 RfRQM55xCLgw5MYHyDzB9vbRQx9qUi2z1+P6/md8EBK1AEA4A6y8tHzVT5ikgU6/
 LXtnSoUKycysmI/E+pQec/I8cgGEEhEKrwENPbZ+e9x953L0T8t+rZBF4ZH9jTyh
 02uLsVv6xfn3+gC3ABT0wfYI9B7/GzANqA0M6/y3u4yLz9u2bnfgvOcql7s8j8e7
 tPcanwizvT5wzwhtMFDhfdf1QXgBKynLGCm1U/Mj81nGqvto8X2txmOkIVyhUxyt
 K9OjMF5zpwrEjnLArCaLH2/JR3h7OwWvTudc3MV+FlrK7N8NZahRm5Q4KsIe1WtJ
 79SsuefXKEnUNzRLDiUuQ==
X-ME-Sender: <xms:P52nZuaWVWt3LzaTcuKi9lWce78zuQwk1s6gyMmG2YBqZ4m6ddZFxw>
 <xme:P52nZhYAAnHRxTfCsLvwGhzsM4xh1IR4_el-CgkqrBUqK_7H_rdXJ3a2iXHS6DmV3
 DRKGhBfG9jFMUWBVY8>
X-ME-Received: <xmr:P52nZo8llgk6eirBR1sifIZ007IJgg-RnJjbg2Q7OwYBe3OpK8H4tTWlzlCbM7BU_AJTBzJYjow-lsgNwFGHoM94oNHXlfJ-mkE9jNAIsBbZZuU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjedvgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:P52nZgrkY-HryAyZE8Fn6aFVBBLqHQMMNl4cpIIKHoBIc6X97NDImw>
 <xmx:P52nZprY5Nfp4yc_WoPX1TU9UP64kD1wAq1kSBnwUBETD_IUgTaTcw>
 <xmx:P52nZuQx6UGwTpiueD3VXDN4QZBfDXzCd7QdbnTW0d6A9-4-PqIBrQ>
 <xmx:P52nZpqn6rsdvZYMlWU3eu7i-JEo1gTOWaV_BZqaz5We_mPHDtC9_w>
 <xmx:P52nZg2fFKgW-ls48ZQp-msFato5uLNag07d0MzKgoox38Mu8_vXwzG_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Jul 2024 09:46:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: ohci: minor code refactoring to localize text
 table
Date: Mon, 29 Jul 2024 22:46:30 +0900
Message-ID: <20240729134631.127189-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
References: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The string table for tcode is just used by log_ar_at_event().
 In the case, it is suitable to move the table inner the function definition.
 This commit is for the purpose. Additionally, the hard-coded value for tcode
 is replaced with defined macros as many as possible. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.145 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sYQiA-0000Lb-9j
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

The string table for tcode is just used by log_ar_at_event(). In the case,
it is suitable to move the table inner the function definition.

This commit is for the purpose. Additionally, the hard-coded value for
tcode is replaced with defined macros as many as possible.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index c3fff94b13e5..a0bb0e87e18a 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -531,20 +531,28 @@ static const char *evts[] = {
 	[0x1e] = "ack_type_error",	[0x1f] = "-reserved-",
 	[0x20] = "pending/cancelled",
 };
-static const char *tcodes[] = {
-	[0x0] = "QW req",		[0x1] = "BW req",
-	[0x2] = "W resp",		[0x3] = "-reserved-",
-	[0x4] = "QR req",		[0x5] = "BR req",
-	[0x6] = "QR resp",		[0x7] = "BR resp",
-	[0x8] = "cycle start",		[0x9] = "Lk req",
-	[0xa] = "async stream packet",	[0xb] = "Lk resp",
-	[0xc] = "-reserved-",		[0xd] = "-reserved-",
-	[0xe] = "link internal",	[0xf] = "-reserved-",
-};
 
 static void log_ar_at_event(struct fw_ohci *ohci,
 			    char dir, int speed, u32 *header, int evt)
 {
+	static const char *const tcodes[] = {
+		[TCODE_WRITE_QUADLET_REQUEST]	= "QW req",
+		[TCODE_WRITE_BLOCK_REQUEST]	= "BW req",
+		[TCODE_WRITE_RESPONSE]		= "W resp",
+		[0x3]				= "-reserved-",
+		[TCODE_READ_QUADLET_REQUEST]	= "QR req",
+		[TCODE_READ_BLOCK_REQUEST]	= "BR req",
+		[TCODE_READ_QUADLET_RESPONSE]	= "QR resp",
+		[TCODE_READ_BLOCK_RESPONSE]	= "BR resp",
+		[TCODE_CYCLE_START]		= "cycle start",
+		[TCODE_LOCK_REQUEST]		= "Lk req",
+		[TCODE_STREAM_DATA]		= "async stream packet",
+		[TCODE_LOCK_RESPONSE]		= "Lk resp",
+		[0xc]				= "-reserved-",
+		[0xd]				= "-reserved-",
+		[TCODE_LINK_INTERNAL]		= "link internal",
+		[0xf]				= "-reserved-",
+	};
 	int tcode = async_header_get_tcode(header);
 	char specific[12];
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
