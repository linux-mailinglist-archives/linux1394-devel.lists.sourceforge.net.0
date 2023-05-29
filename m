Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEF8714895
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b8v-0003vJ-2I;
	Mon, 29 May 2023 11:34:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8t-0003v6-Gc
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=hISwk3DzdwOAUlTlu0KhkRN8dV
 /uF2WaAso7nQiC/eVJUEn0IiLzxLp0LvtRwAmnMcuJNm6YfbPeYVJTRNlBvivGYc8Sqx+HIBms3R4
 Bz5K01lwQYPgqJ+nB6BmZWtcohLDaHrBtIiN/zO0bUCojVcp1POPqEmjFDrgWaAUG/vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=gH9L4+46hl66E4IdxxrGtaZRwD
 M1CxwTh46AlQ0Zovj8gaiCdMOQ0fMC2V3wHEigHJvjjXAF14kkBzRCvSpB0gMP0ggAijoyWMdG9Wp
 fYa/67TewGeqp3w4R3FBQaV00t8eWx6Y7lg8O6F+RWsTyyCEgiZO2hDs2wWy8gcq20BM=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8s-0008LB-Mt for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 28BE232003AC;
 Mon, 29 May 2023 07:34:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 May 2023 07:34:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360060; x=
 1685446460; bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=C
 ltzJyT9C90mD+pOF+VQG7jxa6Xa3pLsm6imlObuloFvVeKLNHwxcT1RBDHFCAhoz
 ep0okZriQIJTF2P678LVrgOadawGS+mX8/G+FkUWRgoJI1Nd/B1GICVcbluy595Z
 2a9Uz6k90vtL6Ix5YxCNxPt1BMImKjVQ13ThqnUCkKfBIGL4vyFQD5ZVpgBNcfrg
 YI78/8+RPkaG4fdabMzEX2M4NuvjtuiUI45acVjHKyzOGEq6f/aNW73eHgBse2IM
 0ncuiTCPB0z0hf06v4vzUS1NJobzjson/yaoyOxw4h+bA8fw492Tk+seIK01gokF
 0yF8WJ/WycDGY7OfIaGeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685360060; x=1685446460; bh=v
 LnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=N5ZJrem5eSTvzJ0hB
 qgp6y/SpeBdP1HkTBp30KjO5q7gEqUrIu5Q4RQA0GG9VqkLRbuMKHSxsoVS7ho6V
 E7AEglwqijH5baaUismXk/bwhVjCHLoO+2qw+FMI4gTRUEEsRqL/Qso+QqDh5zH1
 vzkn2ynHKZzn9bP8bnIPR0OP2+jtXQXaIfv+yhD8DBE3ntFsAfZmuWj68cAhVpB2
 Lde/JFzKWiDCGrck5/cmPdOnkNYVW4FjapK+DbSYTgZ3aF3hfAROzys+iwPLoD9/
 9iTZ5N+4GaC9ZfMUGWux/tt+9kE5z7KvmMe/QIc7r1VI1drEO4MLT+pBFRyPmPEl
 IPU+g==
X-ME-Sender: <xms:vI10ZPcRWAkGy_IQRfl1Um4Qs8tgQ5PkZIrV2iG7GQo8fbkQDBppxg>
 <xme:vI10ZFOsTSS0su6-Rsvk1ipWrKxJljzFSqnle0LloI02UMnXTy9sW9CthP5id_gd4
 cA-ZUBVGnHx9NkvgoE>
X-ME-Received: <xmr:vI10ZIhJyQtJAXdrdQq_eNqvYTrVpDZDYIrealLprac3_JuomAap2YJz5rhXW61RNhNiYZ-CznqvcZm6i-hy3H90DZNdhTPU8WBA522zYj9HUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:vI10ZA_rB9tj0dm017vFHMoo1qIJXKZvbfPwNwe1bGILxJuDBmWakA>
 <xmx:vI10ZLtTpk-3eMWPWR1CevA813FPFZQxRAiT_tNpeyS9csJ--DYFIw>
 <xmx:vI10ZPFEVjQMzoIXDFFe5ZqB76Ll873Gdky1hECN6jjojmGCEan__Q>
 <xmx:vI10ZJ0Pk8q45dcsbawWTQ3RczRz21ePe2BDQXkrDgBRzAD6rn4zsw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:19 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/12] firewire: cdev: implement new event to notify
 request subaction with time stamp
Date: Mon, 29 May 2023 20:33:58 +0900
Message-Id: <20230529113406.986289-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI,
 the trailer quadlet of descriptor in Asynchronous
 Receive (AR) request context has timeStamp field, in which the 1394 OHCI
 controller record the isochronous cycle when the packet arrived [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q3b8s-0008LB-Mt
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

In 1394 OHCI, the trailer quadlet of descriptor in Asynchronous Receive
(AR) request context has timeStamp field, in which the 1394 OHCI
controller record the isochronous cycle when the packet arrived.

Current implementation of 1394 OHCI controller driver stores the value
of field to internal structure as time stamp, while the implementation
of FireWire character device doesn't have a field for the time stamp,
thus it is not available in user space. The time stamp is convenient to
some kind of application in which data from several sources are compared
in isochronous cycle unit.

This commit implement the new event, fw_cdev_event_request3, with an
additional field, tstamp.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 88c8b5fac5e5..5a9446d30447 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -178,6 +178,7 @@ struct inbound_transaction_event {
 	union {
 		struct fw_cdev_event_request request;
 		struct fw_cdev_event_request2 request2;
+		struct fw_cdev_event_request3 with_tstamp;
 	} req;
 };
 
@@ -709,7 +710,7 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 		req->handle	= r->resource.handle;
 		req->closure	= handler->closure;
 		event_size0	= sizeof(*req);
-	} else {
+	} else if (handler->client->version < FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP) {
 		struct fw_cdev_event_request2 *req = &e->req.request2;
 
 		req->type	= FW_CDEV_EVENT_REQUEST2;
@@ -723,6 +724,21 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 		req->handle	= r->resource.handle;
 		req->closure	= handler->closure;
 		event_size0	= sizeof(*req);
+	} else {
+		struct fw_cdev_event_request3 *req = &e->req.with_tstamp;
+
+		req->type	= FW_CDEV_EVENT_REQUEST3;
+		req->tcode	= tcode;
+		req->offset	= offset;
+		req->source_node_id = source;
+		req->destination_node_id = destination;
+		req->card	= card->index;
+		req->generation	= generation;
+		req->length	= length;
+		req->handle	= r->resource.handle;
+		req->closure	= handler->closure;
+		req->tstamp	= fw_request_get_timestamp(request);
+		event_size0	= sizeof(*req);
 	}
 
 	queue_event(handler->client, &e->event,
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
