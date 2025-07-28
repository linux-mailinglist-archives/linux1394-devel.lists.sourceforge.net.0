Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB042B132D9
	for <lists+linux1394-devel@lfdr.de>; Mon, 28 Jul 2025 03:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULtLtBco9M5vGsKRtIxnbB43zTG01aBbQ2pErrBEDWI=; b=Tl5eMWZnX0D8OC8sOyiWIcDqvU
	1If59Sp8gFRtosn2bpROnGFTH9xJ3Hgi5pTOAwp/jQ3Vz+B5pbFYNsA57Ja2/qA92wv4fcLuFlH86
	G6mok6dEchT1gpUV/4909Kas2NKllt4sks4yxlUPxs1FpLPb5/WYtXwC9ggAm8TZMUnE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ugD1k-0000Cj-9N;
	Mon, 28 Jul 2025 01:51:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ugD1i-0000Ca-VW
 for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uIT7ZT2GEbaZ13vB+uEm7pnNUB9wlozg2/F7BnXZ+14=; b=aHynoJnxtuvQrvuqpXLFjCNWgZ
 XPSFXzbCtvpWVVUsLSKE41+OQYq+1jKElnU93WLNpP9cJyFdb5u4aGMOKiQLNm6IUgkHb2qK36FWE
 AnJopTM5F+r2DiRQjZhZ1SKanq56S1KcUuGlOk+v+LapUc3j04HCo+eKT30D1RICScbQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uIT7ZT2GEbaZ13vB+uEm7pnNUB9wlozg2/F7BnXZ+14=; b=hePpwmjHP5Kq6TV1UlKIK2dqk4
 WSzELqrYIgds1HfB4677XgCV+rkDxuE0frP+FsSTrLciIgaT+ueTrfphc/YLfyIiHnpJpfx3vYx0k
 wr7+t4ZwZDR6jaYaUcQq4mH8tjxWWE78P/TX/xq9BkYxVbOlBIwV8MeUYakIennmudsc=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugD1i-0007Ks-Bz for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:42 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id B102EEC0019;
 Sun, 27 Jul 2025 21:51:31 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Sun, 27 Jul 2025 21:51:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1753667491; x=
 1753753891; bh=uIT7ZT2GEbaZ13vB+uEm7pnNUB9wlozg2/F7BnXZ+14=; b=l
 3gV/XPJ4r1xwxtQ9ksecb5jrtlvMfWJtbXS1CuhqNt/3KDu0iaHldDK5L0SS3fLQ
 ej1yHobFmaramHnZ0aF1H+eeeMY36qaEcqFL5nLe3aWSTf7BpAGq/UbO5asjskF3
 Q/xF5L0GMRUzvUxbhFb9ZORmQPLN5IHVhZEFLhEQS8PPuTToyAzmFohrgvkqZLWJ
 NVg+9IMPHCxgSuJHhmDOhF95rsGGaSf9TIKZ4XKdDAiAPw5gJiyuFoL7LauDSTxS
 SxoC/PXL0xt4LETcpHcwG1InTUZ4BbdSA/FNvKy09qYByHnca3L8rnNMY9LV7JxM
 QQafrML4XzGIPLKBr/k1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1753667491; x=1753753891; bh=u
 IT7ZT2GEbaZ13vB+uEm7pnNUB9wlozg2/F7BnXZ+14=; b=F8bbBz0lyHYKe4Aml
 DJP0RrI+gmxl0mhs3kVJIQrR9ohMh9sm199eN9ze+D5YnZ/5BxQxoN2bY6y7im/p
 iHKvmy2B+EmbNN8HzfkIPWiPMhNNrNdtE38k+hBTcJ6x8bu3EMM8YBc66+3/D1Mn
 UpDyYEED7MZz8U0+ITpjNw5nBgHby3ZjpawkQpqbs8B97Y91+LNG6fVwsUgVDKqp
 UScU9bsG9sGGJhrzR6vybUG/uHiJIrXd/PuYGzGFkG0BvetYbKJYpDHkWzqBHMQj
 51tsqdyWH8vhFwA6RyaXd4d4KBDuhM0kGMUoFWxvW4EfyykGtSJPY3LFT9Sk3b9M
 ssnFw==
X-ME-Sender: <xms:o9eGaNhxIiWfMcz8_w7bkYAItFTv8ST6QKg4nzOudLebq4poDP1jLw>
 <xme:o9eGaK8G2e5Swio1ZSulj0j6f05mJJe-x_PRSMaR165WHvFJUIxXqIgQ3vx4uTtAO
 JQYGOawyVFTicOWgls>
X-ME-Received: <xmr:o9eGaPD9VDcBBLouEWCe_hv5U-zIAJzcKSAacXdAa5Jqd8k6NPHFu_V8FhRIZBO4-dy0vAShZ16duc-uiHY3Q8CQdQqqDOpFtT7H_ZQzxiMC0w>
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
X-ME-Proxy: <xmx:o9eGaPJxKgDgMuuEvTC2_mQJepB4Lk60vyadE4gyAzvQHDchPA1lAQ>
 <xmx:o9eGaKnnW81j_4NwmFVfV25EUJaQJF06ABIaOcA1hpy2s_szjvV_ag>
 <xmx:o9eGaFGBjVQ0NhUBMevyZZ_jzVZi5zTQEM0csgPyKIOpYQIA5QdKng>
 <xmx:o9eGaCFZ5X-BLL1DmU8qcRRqUKZHf_SI5z2JrEy4BApSkNsvwP4dkw>
 <xmx:o9eGaMn1d98qCRBvnEAu61M2KeigC6RiDYttjnzn02XtQQ0d3-Dbby0g>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jul 2025 21:51:30 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: core: use reference counting to invoke address
 handlers safely
Date: Mon, 28 Jul 2025 10:51:23 +0900
Message-ID: <20250728015125.17825-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250728015125.17825-1-o-takashi@sakamocchi.jp>
References: <20250728015125.17825-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The lifetime of address handler has been managed by linked
 list and RCU. This approach was introduced in commit 35202f7d8420 ("firewire:
 remove global lock around address handlers, convert to RCU"). T [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ugD1i-0007Ks-Bz
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

The lifetime of address handler has been managed by linked list and RCU.
This approach was introduced in commit 35202f7d8420 ("firewire: remove
global lock around address handlers, convert to RCU"). The invocations of
address handler are performed within RCU read-side critical sections.

In commit 57e6d9f85fff ("firewire: ohci: use workqueue to handle events
of AR request/response contexts"), the invocations are in a workqueue
context. The approach still imposes limitation that sleeping is not
allowed within RCU read-side critical sections.

However, since sleeping is not permitted within RCU read-side
critical sections, this approach still has a limitation.

This commit adds reference counting to decouple handler invocation from
handler discovery. The linked list and RCU is used to discover the
handlers, while the reference counting is used to invoke them safely.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 32 +++++++++++++++++++++++++++--
 include/linux/firewire.h            |  4 ++++
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index d28477d84697..29ca9f3f14ce 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -550,6 +550,23 @@ const struct fw_address_region fw_unit_space_region =
 	{ .start = 0xfffff0000900ULL, .end = 0x1000000000000ULL, };
 #endif  /*  0  */
 
+static void complete_address_handler(struct kref *kref)
+{
+	struct fw_address_handler *handler = container_of(kref, struct fw_address_handler, kref);
+
+	complete(&handler->done);
+}
+
+static void get_address_handler(struct fw_address_handler *handler)
+{
+	kref_get(&handler->kref);
+}
+
+static int put_address_handler(struct fw_address_handler *handler)
+{
+	return kref_put(&handler->kref, complete_address_handler);
+}
+
 /**
  * fw_core_add_address_handler() - register for incoming requests
  * @handler:	callback
@@ -596,6 +613,8 @@ int fw_core_add_address_handler(struct fw_address_handler *handler,
 		if (other != NULL) {
 			handler->offset += other->length;
 		} else {
+			init_completion(&handler->done);
+			kref_init(&handler->kref);
 			list_add_tail_rcu(&handler->link, &address_handler_list);
 			ret = 0;
 			break;
@@ -621,6 +640,9 @@ void fw_core_remove_address_handler(struct fw_address_handler *handler)
 		list_del_rcu(&handler->link);
 
 	synchronize_rcu();
+
+	if (!put_address_handler(handler))
+		wait_for_completion(&handler->done);
 }
 EXPORT_SYMBOL(fw_core_remove_address_handler);
 
@@ -913,10 +935,13 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	scoped_guard(rcu) {
 		handler = lookup_enclosing_address_handler(&address_handler_list, offset,
 							   request->length);
-		if (handler)
+		if (handler) {
+			get_address_handler(handler);
 			handler->address_callback(card, request, tcode, destination, source,
 						  p->generation, offset, request->data,
 						  request->length, handler->callback_data);
+			put_address_handler(handler);
+		}
 	}
 
 	if (!handler)
@@ -952,10 +977,13 @@ static void handle_fcp_region_request(struct fw_card *card,
 
 	scoped_guard(rcu) {
 		list_for_each_entry_rcu(handler, &address_handler_list, link) {
-			if (is_enclosing_handler(handler, offset, request->length))
+			if (is_enclosing_handler(handler, offset, request->length)) {
+				get_address_handler(handler);
 				handler->address_callback(card, request, tcode, destination, source,
 							  p->generation, offset, request->data,
 							  request->length, handler->callback_data);
+				put_address_handler(handler);
+			}
 		}
 	}
 
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index cceb70415ed2..d38c6e538e5c 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -341,7 +341,11 @@ struct fw_address_handler {
 	u64 length;
 	fw_address_callback_t address_callback;
 	void *callback_data;
+
+	// Only for core functions.
 	struct list_head link;
+	struct kref kref;
+	struct completion done;
 };
 
 struct fw_address_region {
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
