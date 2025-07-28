Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EBAB132D8
	for <lists+linux1394-devel@lfdr.de>; Mon, 28 Jul 2025 03:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eQ4tjVJ3hDfuJ460zeyEOmPPTUpKq20k27DLPJfBH48=; b=Y9peIjKn6Ez331uFKTYkAxFoFD
	AbthXodIV8zNmw1Mxu1neuCKKN864BkIULUM4wHDctNI2Fk2TWXqsiXBLVvhgu0/3Ei3xpQ+aegxU
	2F+qokiSY/HBkSOT5/pKU1SHjDba4t1JXbIEpiYyFl/tghQkbUpzeAyPVZ8LmIQrkrcg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ugD1l-0007hn-41;
	Mon, 28 Jul 2025 01:51:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ugD1j-0007hU-E4
 for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D0BMPfPajXGaC45vmNs+dIanSxJ+Y1IlpOlvP9lpPHg=; b=gnwN/lp3q2nU7Zwfyv7KFSkLwg
 4xa/ZibzZ9ISEM6EidOOEqExvSA+acrK64Lq3b8wHDQCP1tbIKew9+mj57uxVxc7eRz9KXWE7+GiB
 44lo8FdsxdaWjE9q1L+QobtjGkwJbSvVF01gVjyqIXACy9QSvXy+kPGWfQmle7KCB3yM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D0BMPfPajXGaC45vmNs+dIanSxJ+Y1IlpOlvP9lpPHg=; b=JXuYelHpKxB29I6bYMlylVC5j/
 15lp7s020HYLdZvvSBJ/gwIUDDnZEPXAgHCyYOcd/u5J1+TW4rhHVtR97cYkaDFbwh6c9jWbxet1M
 neFeiA2Co2okazmReQSNEs3hN6WU3dD1bOpI+xrsyQD82NIi+iWo0GLrrKugjDvYG4mE=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugD1j-0007Kz-Gb for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:44 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id F063EEC00DC;
 Sun, 27 Jul 2025 21:51:32 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Sun, 27 Jul 2025 21:51:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1753667492; x=
 1753753892; bh=D0BMPfPajXGaC45vmNs+dIanSxJ+Y1IlpOlvP9lpPHg=; b=f
 W6QzVKwaobJ7GUPv3Bp9aaIhJD1rnAem5FFGu2NLmYSEIR3biPmDk+UHFXtkpwYI
 Y6DP+1ro+l4Ur7zF9YMxYCeNoMr8+5eYGPT6OQB+XF5hb5ibsCytJkJNDzO7c236
 fciYzMa8SiGGqbMsltPpl+Xq4dOWxa0DaC4MFpFKwkVMFuAGMXzfTxbCoRRbsoxh
 5goqytBsGHCylB+d/lgZtyKwI1bZyScYM4ixWog8iKFQ5XdTsCMeuTZL64DTQSJK
 32Zz8Jcc5SRzjPHT+XwkBA8Cs+3u5vD2wDdBl4z3w8wF+OL2153v3+GHSF1TOTWl
 AunalhuLiUlsKAb7/sZfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1753667492; x=1753753892; bh=D
 0BMPfPajXGaC45vmNs+dIanSxJ+Y1IlpOlvP9lpPHg=; b=IaS1lKklM6lBm2WBJ
 hwQWhfHDqlgA2cfI5r+I+4NuSffHBbcypb6XENoy9LkbmLYVwf8arlWH50gcwUNA
 kLYKVM+YwMXLxxmUapwr+WbTblh148Z5+SiJe6yXNRvmwR+y0Deysz5iUh8N78yP
 zUAyA9jy9yM08lxi0nGoiBhf6WCOTRTTleUimsSIe5jxB2qfr4m9KgLVWcZ/KdtI
 gRxnNHdZNF0cZIf4C4iGiO1uRLHn99AAPyyfTfIvqwMpmaGaCDbOtphOvwxKt8J5
 aesS4FgKjAS3KXMR7VgRjpsN4Cepv1AEy3PKpwxpsIk/FVdNMuHO6Yh0qhk4YsaK
 QyBfQ==
X-ME-Sender: <xms:pNeGaFu7LdoW9J8jaWDBxsnGMo-NRSlcPECInVWVIsrsgp3t2B6NKA>
 <xme:pNeGaHYFd4d6iEkNDWNbwiig0o6B82J2_mPttD4E2iDaITl52gAXemJ_-29YWnUwx
 q5g4MEzeDBQQKPTj5k>
X-ME-Received: <xmr:pNeGaKtC9Zawni8YhlfD3mexF50ZBBNC6dB_swTm6FFrv97oar0Ngx3SVzauLZUohB_03pCvQBKPkuQAMTC31iQilY4rzshhSCeT0f-fU51Mrg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeltdeltdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:pNeGaJG3izv8ACGkLIpc-ZhVECiBw2cncfShMLjOASQ8wTR_2dAWIA>
 <xmx:pNeGaFxm54qq2DfI0ssYSkK02Ac-UetW1s1QjA2ZAhoZ-acu6-BM5Q>
 <xmx:pNeGaIhFy2ODx5flvAd2dFElYBiENCQkyH1qRqTyspLgQLxjSIHE0g>
 <xmx:pNeGaIxOLxBZk3BVj-eESLuOBP4GkiVXpM7KUySVgCW9tRsg_IJljA>
 <xmx:pNeGaKRzFspz13kw9qCmMQvwBLjrkPKTXKGTJuztqssyj1FnYefy4PLu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jul 2025 21:51:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: core: call handler for exclusive regions
 outside RCU read-side critical section
Date: Mon, 28 Jul 2025 10:51:24 +0900
Message-ID: <20250728015125.17825-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250728015125.17825-1-o-takashi@sakamocchi.jp>
References: <20250728015125.17825-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The previous commit added reference counting to ensure safe
 invocations of address handlers. This commit moves the invocation of handlers
 for exclusive regins outside of the RCU read-side critical section. The
 address
 handler for the requested region is selected within the critical section,
 t [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ugD1j-0007Kz-Gb
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

The previous commit added reference counting to ensure safe invocations of
address handlers.

This commit moves the invocation of handlers for exclusive regins outside
of the RCU read-side critical section. The address handler for the
requested region is selected within the critical section, then invoked
outside of it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 29ca9f3f14ce..a742971c65fa 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -935,17 +935,19 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	scoped_guard(rcu) {
 		handler = lookup_enclosing_address_handler(&address_handler_list, offset,
 							   request->length);
-		if (handler) {
+		if (handler)
 			get_address_handler(handler);
-			handler->address_callback(card, request, tcode, destination, source,
-						  p->generation, offset, request->data,
-						  request->length, handler->callback_data);
-			put_address_handler(handler);
-		}
 	}
 
-	if (!handler)
+	if (!handler) {
 		fw_send_response(card, request, RCODE_ADDRESS_ERROR);
+		return;
+	}
+
+	// Outside the RCU read-side critical section. Without spinlock. With reference count.
+	handler->address_callback(card, request, tcode, destination, source, p->generation, offset,
+				  request->data, request->length, handler->callback_data);
+	put_address_handler(handler);
 }
 
 static void handle_fcp_region_request(struct fw_card *card,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
