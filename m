Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE339477A1
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUE-0005IG-EW;
	Mon, 05 Aug 2024 08:54:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU8-0005HK-Kv
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=A8VVIXCQ9QShKTyZArbzuUlEqv
 ITP12z51SYrKFoPTHLYuQ7s7oN8J20Uvn8ppmRMNMkya9NtfquBBJ1B2c/PL1ZLZTxz4a7a/tZqeu
 XhdK///eJeHsTGA1a7m9RPJ8flmxLm2YEH8FV+D9z2TuCe2GTqUiq3JP4sTqn7rAkHCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=gx6bGu7vJozCU/hz7HAZgb0H6D
 glgdDpswV3QFR5lBqKda79rNH/lFhmnLzGhwMO2YAKG7KrEcfxWyvKxI8J7xBTxFKD87P2WQUOe/G
 ow3Y6GvcJtNEnbnryLQSimnI8IHhEKgyZ3/rtrgOqLnSMDg9fIUOvNCTsK6OWbRrKvlc=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU7-0002qb-Ul for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 5D9551146CF3;
 Mon,  5 Aug 2024 04:54:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 05 Aug 2024 04:54:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848061; x=
 1722934461; bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=b
 MU9vwIGsccQJysQDz1zz3I8fN6RG3UJNLHZpLiAsf8eW+5JjtLES+J3OoQM7fCNp
 pcgvLjNd9faLG/K8xiTGqnfr/tz+9ketzmnzP/UTKWmf6OghQbDn0o6HzOssLI/T
 FliVMM+VGovFKn/zrroWCzt5R/VgTFmZ3o04c6FZ2IOuUKV9TbOCC04f7vxawu7U
 HycJ+waaQGb/fbfxHQAuaff1spFEduZVcM94/XvxaElhKnYJ8qOFJuXTHfy2YLeo
 dXCHkZ/i6mBsG3FIynhMq+GqD+cvIL+JU6nYxwAlL8xWLZzBPIOSpuAxFnWf0sO0
 U2iNScWh6iBZIvBsGHXJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848061; x=
 1722934461; bh=ylV0FAWwnqnELWHfpdHvBmEJyKerlndDqM/PUzAtIHU=; b=Q
 7gSO2tog4qr6Xnc7Yd4aluTsVam2eWo7VfkAbIGTkuuCUazPHLBUSJs2DVrs6Np9
 ga2H6QMnmQsFQhEjR8ik+wDWeDZyxNVH2Amxgp2y99lhPpnvThkYMgkFYsCCxEJo
 K+rgKK/3YlSXn/MXEVKWMK5VNVdgYsGG00ggWrdsJxtSup4xndHK37xviZ9NzV9B
 6XqvnYLPEu0UmdTC/5Brz4rvgsyG0ioLsXiGBnWCLx2MNg9616uhnlhkhVdL7X5E
 /Gk0v42PCWWowxGFCZ/8cw/ZMAYL2oMXacF4aHI94MHnUO8PDODSyYslVAmP4TBO
 qohgKSRgfSZevhm7Uc7Jg==
X-ME-Sender: <xms:PZOwZk66Zehc9eVVVtgFi9-obGEMOPiF6VPEn6Tns1XDVdH7YnF_Lg>
 <xme:PZOwZl6DkAR0dgDk2f2v51af9_96rplzZRW7e569rR3-yz4CCcETO6YKwM09UyTwl
 rFFTTaowNfbERFJbzQ>
X-ME-Received: <xmr:PZOwZje7ll005moVdyxNY72pKWVN-duMjVqtrnxjxZ1JqDXgwhvlpJDAM-1dQMiIa7N04WG1P7mP3ikPGnysYxjk2HZ1B5_FjRuxPrzJV34>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:PZOwZpKM-NLv9yCL7TJKM20moomhd9B9UI13TONslioLUqQYM6fsNg>
 <xmx:PZOwZoLK-pBx9tCD3GMvwb-q0KmuDE-PhBSONWLmtMUijmjvw-MCZA>
 <xmx:PZOwZqyhd_mAqWQsG8o0KurhpMFOiWKlYSxHXSA_K0rF8AKoJk64PA>
 <xmx:PZOwZsLvXVhC8VmW_BnSyB3B7BR_f9bFAJO7itNFQ1GiZtqYW5GLuw>
 <xmx:PZOwZvXlrzM66ZYs2DzutLpQFPPLEdli_3BwfTs4ib8yoWYDNl4GZyTg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:20 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 07/17] firewire: core: use guard macro to maintain the list
 of address handler for transaction
Date: Mon,  5 Aug 2024 17:53:58 +0900
Message-ID: <20240805085408.251763-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function maintains address handlers by list. It is
 protected by spinlock to insert and remove entry to the list. This commit
 uses guard macro to maintain the spinlock. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c | 10
 ++++------ 1 file changed, 4 insertions(+), 6 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
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
 [103.168.172.155 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satU7-0002qb-Ul
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

The core function maintains address handlers by list. It is protected by
spinlock to insert and remove entry to the list.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a0224d4d8e11..a006daf385e9 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -596,7 +596,7 @@ int fw_core_add_address_handler(struct fw_address_handler *handler,
 	    handler->length == 0)
 		return -EINVAL;
 
-	spin_lock(&address_handler_list_lock);
+	guard(spinlock)(&address_handler_list_lock);
 
 	handler->offset = region->start;
 	while (handler->offset + handler->length <= region->end) {
@@ -615,8 +615,6 @@ int fw_core_add_address_handler(struct fw_address_handler *handler,
 		}
 	}
 
-	spin_unlock(&address_handler_list_lock);
-
 	return ret;
 }
 EXPORT_SYMBOL(fw_core_add_address_handler);
@@ -632,9 +630,9 @@ EXPORT_SYMBOL(fw_core_add_address_handler);
  */
 void fw_core_remove_address_handler(struct fw_address_handler *handler)
 {
-	spin_lock(&address_handler_list_lock);
-	list_del_rcu(&handler->link);
-	spin_unlock(&address_handler_list_lock);
+	scoped_guard(spinlock, &address_handler_list_lock)
+		list_del_rcu(&handler->link);
+
 	synchronize_rcu();
 }
 EXPORT_SYMBOL(fw_core_remove_address_handler);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
