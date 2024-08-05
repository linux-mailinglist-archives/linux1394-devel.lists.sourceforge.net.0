Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B055894779E
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUB-00068M-D0;
	Mon, 05 Aug 2024 08:54:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU8-000680-K3
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=fz9Ecb8EICfB8M4AY6RHlTr0XP
 1qNdCiXsXVOmtMfLEPybfkGFktUHVXicPXJdLroKhm+VTLbCurV0uH8hvXeaKa6t1bTaIremysI0b
 iqt49IBvO1/75/Axbced+K3Lu6P9sQA03dgEWx6ksFlnkFsAN7Hk1WYZpQ5flZT4CLQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=NkVL97VEDt19XzndlIICz/DFS+
 YehCTw2MxW/7DkGWvSUEpKmME9blIBlbn5m5PffwoX0CVNBE2Uhi+v0D5q0hvtbyXtq3XVDEBbRjL
 3NLMib02xlibXgeFIPLrkTWQfwZ6waSPs6vJVhSZTW6rclKius3Y3RgH3pSbjefC7lMw=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU5-0002qB-8t for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:29 +0000
Received: from compute8.internal (compute8.nyi.internal [10.202.2.227])
 by mailfout.nyi.internal (Postfix) with ESMTP id B0358138FD80;
 Mon,  5 Aug 2024 04:54:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute8.internal (MEProxy); Mon, 05 Aug 2024 04:54:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848058; x=
 1722934458; bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=n
 ilAbEbG2omaCte4zRoqkz89Be0gWKCrs08zudKNowYZpU7T3+il94kohdq7vAGpM
 sSrfa0iiFRQJpjIMarG4ftE3+dw064VL9277vx+MoUoEm+DTdRghuiZzCEJ3qQ8G
 z6YCNr4hc5aB6VR4hKuPAw484tpAjTGWFwidceYrgHoYSLoyjnbjfoeWSd9oamfF
 FPkXA37f5e+dNgx64jGUEFl75nrd26u2F1Sb+Qt8J7e742hjC1BpIGea+XYaWAXk
 aBhsceK+zlVPzowOlLeEbb9YtDiMJKbyQJT8W44DZDYgmWTDbI9PdqjtbQEdhACE
 9pHD5bMeux9tkbIjydvng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848058; x=
 1722934458; bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=U
 9SWiOXWfPBTsV98mfVsZx2ImU6H906iY1bvCvhkAIM6mKhXdO66O0inuoFmQoWPp
 BaCp85k8HsL82et6jRol8WtPsbHdC+1mIqMcCcwAHeo/u3ImKZ/1FVbhqu0cR8ex
 LMJuioCfsR80vAXzqVWQbbFImDhcf1aOcBwo82Ati1iPgDAivpv9IIb4Lh0DlbjO
 K6ueboBW/gnfH7GRrCBvSp8b0D6atvdLMSWWzlmT0e896kloKeyijOTlvhPzlkk1
 xcC+3keb7ZIsYQIeRLRX1ocSv/MgrWCFw6G+M/a86x6Su9eLOf83enfYGTsdu/mw
 sL3wigY/LL0/lLkkmOJLg==
X-ME-Sender: <xms:OpOwZoqxZBEO6zJqq2ngAwsL4Imit2F5xdTSSUN1uw7AI861eEvThQ>
 <xme:OpOwZuqvj35qD5pCiUWPoyVbacau0h7hGOuJI_u26FXNvd4WE0YH_oNbmZxf70Xri
 rS5El3PmJr_26_oipA>
X-ME-Received: <xmr:OpOwZtN6Ugoc3vhwiX8WkzxewSoUDJP8G6o0uz7W1IYO1Hfv3wKEo4PdA1GsjCLKXTuVtOclk16K3sZtvPs-gtDPMbwBS2OcqfbhD0HJEhM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:OpOwZv5J3_j5tVMYrxfc8ipLEQkwZAy6Prj4KLm8UrN7cozZpRNB9A>
 <xmx:OpOwZn55-Enoub6nVpPscedYhdvx9dEwFNO44EEdOoISWaVvSUVOfw>
 <xmx:OpOwZviKAYGhoyBbPSZuCdtDmNlRu5EoBBEfsoAFh2gcNlrrre4njg>
 <xmx:OpOwZh6NwO88IPDpuvILQggsFkLRZVr3Dgt3RL6Bc2t-ZB7gZVIG0A>
 <xmx:OpOwZnH4fWqgO2nyIQSizCI5IxlY6YtkDsBkn5emNBPkb9XGTdfBjTWf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 05/17] firewire: core: use guard macro to maintain RCU
 scope for transaction address handler
Date: Mon,  5 Aug 2024 17:53:56 +0900
Message-ID: <20240805085408.251763-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains address handlers by list. RCU
 is utilized for efficient read access to any entries in the list. This commit
 uses guard macro to maintain RCU locking and releasing. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c
 | 35 +++++++++++++ 1 file changed, 15 insertions(+), 20 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satU5-0002qB-8t
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

The core function maintains address handlers by list. RCU is utilized
for efficient read access to any entries in the list.

This commit uses guard macro to maintain RCU locking and releasing.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 35 +++++++++++++----------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 2a2cbd6e2f9b..a0224d4d8e11 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -925,16 +925,14 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	if (tcode == TCODE_LOCK_REQUEST)
 		tcode = 0x10 + async_header_get_extended_tcode(p->header);
 
-	rcu_read_lock();
-	handler = lookup_enclosing_address_handler(&address_handler_list,
-						   offset, request->length);
-	if (handler)
-		handler->address_callback(card, request,
-					  tcode, destination, source,
-					  p->generation, offset,
-					  request->data, request->length,
-					  handler->callback_data);
-	rcu_read_unlock();
+	scoped_guard(rcu) {
+		handler = lookup_enclosing_address_handler(&address_handler_list, offset,
+							   request->length);
+		if (handler)
+			handler->address_callback(card, request, tcode, destination, source,
+						  p->generation, offset, request->data,
+						  request->length, handler->callback_data);
+	}
 
 	if (!handler)
 		fw_send_response(card, request, RCODE_ADDRESS_ERROR);
@@ -967,17 +965,14 @@ static void handle_fcp_region_request(struct fw_card *card,
 		return;
 	}
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(handler, &address_handler_list, link) {
-		if (is_enclosing_handler(handler, offset, request->length))
-			handler->address_callback(card, request, tcode,
-						  destination, source,
-						  p->generation, offset,
-						  request->data,
-						  request->length,
-						  handler->callback_data);
+	scoped_guard(rcu) {
+		list_for_each_entry_rcu(handler, &address_handler_list, link) {
+			if (is_enclosing_handler(handler, offset, request->length))
+				handler->address_callback(card, request, tcode, destination, source,
+							  p->generation, offset, request->data,
+							  request->length, handler->callback_data);
+		}
 	}
-	rcu_read_unlock();
 
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
