Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF19B132D5
	for <lists+linux1394-devel@lfdr.de>; Mon, 28 Jul 2025 03:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TEIFILMPgtMer+3vQd6uZgFRNmf6jIUrGf1pYBPqvAs=; b=AgZB8wOgXigrOeStuMJmv1E0hD
	P7aTee1E27MweVYoOnLz0QnQwWoR+ZCy5oKdYPAZ2Wmqr0tVnxA3h8DI6oi2PLtfNkQHN4/xZwbDp
	eFcEck9nqmLXSH09mBVUadWOtiBQZsxKjehPI4ON8CneZ/Si/SVMKWa9zlaYwWTBGQTM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ugD1o-0006yY-OD;
	Mon, 28 Jul 2025 01:51:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ugD1l-0006yQ-AJ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T+KYmE/l+yGdl7UNyJzzt98jcLOcd4qLqrRVfYXoeUM=; b=WM4jBAvJIFcr/Xkxt/NaZXsEGE
 P8qshEj48iEEnpwyeaiR6a1/uBsqtvbCq/rfn3KEEWkrC2FN3u+bp/o56485koUbUKiNmvsWXyJYg
 TdjUxtlOqolKYOvkF80SSNdwtHb7+JspQI0lEhLjJFOFeE3VsB/Vknw1iZ60WnZBW8+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T+KYmE/l+yGdl7UNyJzzt98jcLOcd4qLqrRVfYXoeUM=; b=kJvk1BxfmzQ6/9tGtvSQbEpCos
 q28J5glw8H36WH3dv7kL/ZmCutsd2Fxx/dBASkpYyRtYo/k5hh/WMWFwRjyFNKTx40EN3LkKoIjhc
 TEIFmR7aGwDS21aLibI6cYLzeXPr/7M5HckIB2dyR3ctjK3JQ5tGA42YdEbb2JJAUWaM=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugD1k-0007L9-PU for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:45 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 3FDEC14000E3;
 Sun, 27 Jul 2025 21:51:34 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Sun, 27 Jul 2025 21:51:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1753667494; x=
 1753753894; bh=T+KYmE/l+yGdl7UNyJzzt98jcLOcd4qLqrRVfYXoeUM=; b=e
 PAANq2py4DHrail2mkIieVSfGEEkvkDJ3dC//02HMEBCL0p93iairB+HFq/jUNog
 RkgkYC9SQmrxIW/5ROZheBTHbBY0++f/o7WA+bv7HOHS7IR2Od4ReaWdVDiqoRL6
 mLjdPNX1AZ2DLbzAHjof+g1DlixAYbSynjZYMtkKzqYZFLhsCajVzbEmJJnFwvtm
 3JDQDRh1AQtJvMy6OKyx63Zp6Iw0c0M66ntIcTsS07YaaIX//8n8IytF89n6IwFV
 M/mbviy3L5wErDGQFlLOh4iMh3eDSl2gByWNYtWQAcqPj1ZOMAhY/lvZhcGv/+uw
 6/ktQA9MpWxNmahmIu5Ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1753667494; x=1753753894; bh=T
 +KYmE/l+yGdl7UNyJzzt98jcLOcd4qLqrRVfYXoeUM=; b=EEgAPSn5YsQuTs/2x
 AXUhSMT/17SVBszKPa1ILfrRdwlmYLZkYm7qo18JCUoLE4wBVFj1C0gZaMAJL2oE
 b14/9mpnN3Os8YLfbkJ4HbQfS5zSPnmr4WPZ8tjHpY9EesxppnbagyWz6+uCuks9
 g+BQlBSunGQ70zaLNFTjRtxtm7Ej11K+vNuP7T5ImVN87WB6124mVunyoMkSTxD2
 p2ru9cP3WNFk0sxxEG4/+P4SbJ3fs094zG742gVvOzooeZscA4CDw3Ro9j2kXP0L
 gmqGN0CCaTMW/Y+qcyPGdHCNRSPX/GQ959i6YlxRSl4s3bJfS7oeyHsh7RU4FJi+
 pteKw==
X-ME-Sender: <xms:pteGaBa2vOLSFbwp43454_6n-o_QgutkmDX_hiIXT45XiegxuMmM-A>
 <xme:pteGaBXJ_--XN83VyPyRUP6GppehppgPuIlLmRfY6mQEF0ysqa1ATRI4QHeoDOIzn
 V04hsMA3FvgasNRjCY>
X-ME-Received: <xmr:pteGaF5nhTHp4QnvFax_csu1fS8W3lnNKBKUopD_5pt8JqLXKNOVU_OmUFUNggYi0jlYANCwlO95zuLFJB77FiQRORrWbVkVQwxDvk1SWb9hZg>
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
X-ME-Proxy: <xmx:pteGaMgp6Jrn-LNnNnfzGSSBp5Uujb1jsGO79sw5n1FJcPs8OATnYw>
 <xmx:pteGaMdxlTAZNlBje4qK62T-I8bx6I4kSkN0_tx241gpeuONGFAw0g>
 <xmx:pteGaBdEzJ3wfMM6T9uURNwL8NCmGQkCEUSjkCM8i2R1udXWmMXXog>
 <xmx:pteGaG8rJFUUdFhuN8BfYBSepX-BAb76BsTfODR1gcPDK6i6f0EDWw>
 <xmx:pteGaHeGew6PdFc7CKrojzW2P-V-_TC49ZYrsriq_VQbaK-MWN3SGAzU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jul 2025 21:51:33 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: core: call FCP address handlers outside RCU
 read-side critical section
Date: Mon, 28 Jul 2025 10:51:25 +0900
Message-ID: <20250728015125.17825-4-o-takashi@sakamocchi.jp>
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
 Content preview: The previous commit added reference counting to ensure safe
 invocations of address handlers. This commit moves the invocation of FCP
 address handlers outside of the RCU read critical section. Unlike the
 exclusive-region
 address handlers, all FCP address handlers should be called on receiving
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ugD1k-0007L9-PU
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

This commit moves the invocation of FCP address handlers outside of the
RCU read critical section. Unlike the exclusive-region address handlers,
all FCP address handlers should be called on receiving an FCP request.
An XArray is used to collect the FCP address handlers during the RCU
read-side critical section, after which they are invoked. Reference
counting ensures that each FCP address handler is called safely.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 30 +++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a742971c65fa..c5408c83709c 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -956,13 +956,14 @@ static void handle_fcp_region_request(struct fw_card *card,
 				      unsigned long long offset)
 {
 	struct fw_address_handler *handler;
+	DEFINE_XARRAY_ALLOC(handlers);
 	int tcode, destination, source;
+	unsigned long id;
 
 	if ((offset != (CSR_REGISTER_BASE | CSR_FCP_COMMAND) &&
 	     offset != (CSR_REGISTER_BASE | CSR_FCP_RESPONSE)) ||
 	    request->length > 0x200) {
 		fw_send_response(card, request, RCODE_ADDRESS_ERROR);
-
 		return;
 	}
 
@@ -973,22 +974,39 @@ static void handle_fcp_region_request(struct fw_card *card,
 	if (tcode != TCODE_WRITE_QUADLET_REQUEST &&
 	    tcode != TCODE_WRITE_BLOCK_REQUEST) {
 		fw_send_response(card, request, RCODE_TYPE_ERROR);
+		return;
+	}
 
+	// Reserve an entry outside the RCU read-side critical section to cover most cases.
+	id = 0;
+	if (xa_reserve(&handlers, id, GFP_KERNEL) < 0) {
+		fw_send_response(card, request, RCODE_CONFLICT_ERROR);
 		return;
 	}
 
 	scoped_guard(rcu) {
 		list_for_each_entry_rcu(handler, &address_handler_list, link) {
 			if (is_enclosing_handler(handler, offset, request->length)) {
-				get_address_handler(handler);
-				handler->address_callback(card, request, tcode, destination, source,
-							  p->generation, offset, request->data,
-							  request->length, handler->callback_data);
-				put_address_handler(handler);
+				// FCP is used for purposes unrelated to significant system
+				// resources (e.g. storage or networking), so allocation
+				// failures are not considered so critical.
+				void *ptr = xa_store(&handlers, id, handler, GFP_ATOMIC);
+				if (!xa_is_err(ptr)) {
+					++id;
+					get_address_handler(handler);
+				}
 			}
 		}
 	}
 
+	xa_for_each(&handlers, id, handler) {
+		// Outside the RCU read-side critical section. Without spinlock. With reference count.
+		handler->address_callback(card, request, tcode, destination, source, p->generation,
+					  offset, request->data, request->length, handler->callback_data);
+		put_address_handler(handler);
+	}
+
+	xa_destroy(&handlers);
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
