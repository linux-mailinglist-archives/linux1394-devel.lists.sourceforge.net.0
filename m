Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD6F94557D
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 02:36:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZgHQ-0006EX-Vl;
	Fri, 02 Aug 2024 00:36:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZgHQ-0006EP-4M
 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nSQLw0DtRLTyTefcQ0WywR98+UooHN8NN3gIiWDsTAA=; b=eWhJJdQn1MTmCdSubicEDGLmtX
 OHrO3sNMvVW0Qjb2O46cmVlGvr0osZEP4mcxXE9JLClpHmWphZ5W9c6J2wbjZ8Tj0h6cNj3puX1mm
 uiQHKjGMgWVjdVoBWrdK6wgydNozzzvKZDpGlODsFbNo6QKLv2WbsLJljnSrY5va6MbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nSQLw0DtRLTyTefcQ0WywR98+UooHN8NN3gIiWDsTAA=; b=YGW4fYJYSZiIqF6gLbutMNt/2g
 GxFUwbkAfHM3t1yaL3uL3KwFpjPIq52BqJ9FkhTx5/oF4ueK5/2bZrr3PM3MxJJSV5o6V4O42uk9p
 f1OFMkts9g24Z+nR2S+UxyMIgooQCCkC5/vameQQnYS0uFhDI9xzHV5pL9qmNM/j4e0w=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZgHP-0000sN-U2 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:24 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 24EFB1151AC1;
 Thu,  1 Aug 2024 20:36:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 01 Aug 2024 20:36:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722558973; x=
 1722645373; bh=nSQLw0DtRLTyTefcQ0WywR98+UooHN8NN3gIiWDsTAA=; b=G
 0Nb6Q+IflDVfMokeGzEMjwv7GyKWzPBeyK3nZ9eXcz1obdELlkFQPt04K+4bnjfH
 wfwQeMYmRxJiaZwDkbW1cuPkPcC/ctgHUgjMYpKlOxkadZjprplFvMKJLssTvkP5
 VbOgnnli9G6jUoTIFzAzrVRDiesoLGBuORa4Lx3FFSUguUSuIaWlifsNKU+4fgSu
 BfkFaBP9Jgt98ZgYQTMyPkJYImfdKDdwyOJGuoiGRGng3x3ra5zpXdkxCXg6k1rk
 1m/NnJwz+c+BVCHyINbGU4AQpLAfzDjoBSutiqXmkCWzrV67Toz1DxC5rH7HnyEL
 gxAPJujLScMqfh0xVf9+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722558973; x=
 1722645373; bh=nSQLw0DtRLTyTefcQ0WywR98+UooHN8NN3gIiWDsTAA=; b=l
 SFjAwK+NTcVH14EpSeybqDzDb4AiZYE9goAsKSNKWZj7GQO2mK3BNUUNAx/KUgMP
 8Aoe9OxuCMnm1OUAyR+XkCl8cqS8tWMlNVf98m5AkTy2KY64MgCjllpaykAM53Jt
 DeTi2eSj4RMlnGJ389MMT8yN6eb+lcJWhR8hYqkF1ksTFiFVddf8DkDhTkfDD3Hp
 rSujmjZ8KjMyTZLn6r0tzLLx9LapVWiYTdgEwFtBlscbl9Tp+lz+0xvH+anV0/np
 A5zdJHVJdspfTUiJGsLdHk8m+IX2uMPBwATR+SJTMPqF7s0xtEg7soEZD75MaH1u
 hdgDLLsMI5/9U8CLeJV3Q==
X-ME-Sender: <xms:_SmsZu0z9LGfwTn0uOkf8XUdhOlfuqMAlfGc8hQhR5MH2EFeO1TuAQ>
 <xme:_SmsZhEmE9ioAfzQxNQ7v8vnKwXUIq3m9wGSy6Qd7zUtFBTwOUK1qS0AmUDtto6Sl
 POXc-fYSWIjnqU8AE8>
X-ME-Received: <xmr:_SmsZm7TZgGukiOF3wOpfZT3_cIqjWMIAJGPhuwjIwmMN5SBpRu5PTibAoHgux5w2W3t5tkvChwnokAHnJqIqkKCBTsXb4aLjEslRPzXUBxS>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:_SmsZv1FCI3Jc9uds969yz3Ct_kHQK9yCCGYMLh21XpeCOZKY0lf8g>
 <xmx:_SmsZhHf5qK9J4q-ngKzKeAT5h_EprOhOtqamYMG7z7fUIE048VIRA>
 <xmx:_SmsZo_cSKsiQ7__GL_7c6S0iOEeTwTK7IcYV03wuenV3dPUi7mEWA>
 <xmx:_SmsZmn0nyyFgroRpf-S6T0VMq22E4oZTDtuCG_CCtJJ7TrZFrOERA>
 <xmx:_SmsZmRdju248NFZ2gmPwHfJot0gnwRr1pRUry7hAfviloqI9C4pC6Yi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 20:36:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/4] firewire: ohci: use static inline functions to serialize
 data of AT DMA
Date: Fri,  2 Aug 2024 09:36:04 +0900
Message-ID: <20240802003606.109402-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
References: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit replaces current implementation with the helper
 functions added in the former commit. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 32 ++++++++++++++++++ 1 file changed,
 18 insertions(+), 14 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.154 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sZgHP-0000sN-U2
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

This commit replaces current implementation with the helper functions added
in the former commit.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index a0bb0e87e18a..e8429dbbc60d 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1409,12 +1409,6 @@ static int at_context_queue_packet(struct context *ctx,
 	d[0].control   = cpu_to_le16(DESCRIPTOR_KEY_IMMEDIATE);
 	d[0].res_count = cpu_to_le16(packet->timestamp);
 
-	/*
-	 * The DMA format for asynchronous link packets is different
-	 * from the IEEE1394 layout, so shift the fields around
-	 * accordingly.
-	 */
-
 	tcode = async_header_get_tcode(packet->header);
 	header = (__le32 *) &d[1];
 	switch (tcode) {
@@ -1427,11 +1421,21 @@ static int at_context_queue_packet(struct context *ctx,
 	case TCODE_READ_BLOCK_RESPONSE:
 	case TCODE_LOCK_REQUEST:
 	case TCODE_LOCK_RESPONSE:
-		header[0] = cpu_to_le32((packet->header[0] & 0xffff) |
-					(packet->speed << 16));
-		header[1] = cpu_to_le32((packet->header[1] & 0xffff) |
-					(packet->header[0] & 0xffff0000));
-		header[2] = cpu_to_le32(packet->header[2]);
+		ohci1394_at_data_set_src_bus_id(header, false);
+		ohci1394_at_data_set_speed(header, packet->speed);
+		ohci1394_at_data_set_tlabel(header, async_header_get_tlabel(packet->header));
+		ohci1394_at_data_set_retry(header, async_header_get_retry(packet->header));
+		ohci1394_at_data_set_tcode(header, tcode);
+
+		ohci1394_at_data_set_destination_id(header,
+						    async_header_get_destination(packet->header));
+
+		if (ctx == &ctx->ohci->at_response_ctx) {
+			ohci1394_at_data_set_rcode(header, async_header_get_rcode(packet->header));
+		} else {
+			ohci1394_at_data_set_destination_offset(header,
+							async_header_get_offset(packet->header));
+		}
 
 		if (tcode_is_block_packet(tcode))
 			header[3] = cpu_to_le32(packet->header[3]);
@@ -1440,10 +1444,10 @@ static int at_context_queue_packet(struct context *ctx,
 
 		d[0].req_count = cpu_to_le16(packet->header_length);
 		break;
-
 	case TCODE_LINK_INTERNAL:
-		header[0] = cpu_to_le32((TCODE_LINK_INTERNAL << 4) |
-					(packet->speed << 16));
+		ohci1394_at_data_set_speed(header, packet->speed);
+		ohci1394_at_data_set_tcode(header, TCODE_LINK_INTERNAL);
+
 		header[1] = cpu_to_le32(packet->header[1]);
 		header[2] = cpu_to_le32(packet->header[2]);
 		d[0].req_count = cpu_to_le16(12);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
