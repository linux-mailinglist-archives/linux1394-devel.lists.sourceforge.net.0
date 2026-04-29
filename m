Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO3YC+vQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C08949203C
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OboE64aPRiHzufW4uRATxXAnticJyu3UiaRH9rndYzU=; b=DJpZ0NHS/xExl53NzZMYlcco+P
	/3FFOG8EaLWwBpqeRTscaibYIr3OXS7Xa1DApLqoiYj+nchg3iad+sLotMpVWU/j4fMdPuNMkMQTd
	q7YKk3sge7DLHcSNZJUf+dx0DFdlJ8nYCumAMnFKzWASWYrLTobBx9VAJeD+oLXNZJd4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KK-0003lO-3J;
	Wed, 29 Apr 2026 09:35:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1Jx-0003js-9b
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=eM+uRzA95fa26OAOPBFlVW6KAy
 MnNsHwPcGH50AuZeZgWRzNerSVB5L0IxA5FfLiSGLZf5BjJ/Vh7kzCEkGkxFTXFfn16D9NJaKrpKl
 8x/obtl86tSL7unwlfPlXEglAkT5Vp0Jp34mnTQdFDFJmcmFrv8MT4VJuFbHY2deS7Jg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=TcdkPSEAexICsq5WY6ZzVfSqWa
 Wf33f8NhO6/NtF0Jc8M0Sg1/ueT0ZXIaf8Ns2VlUqDEVf7E+RRZYbRT6+xFUR2yCeMP+IlZlT6pxu
 pskBDA50r0z5XKNljlZyVNhTsu5X0HrBF/m7um5uTk3YpEGG6Kp44fUhD6dZgy+7/BXY=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1Ju-0008LG-OV for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:03 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 16BDC1400041;
 Wed, 29 Apr 2026 05:34:57 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Wed, 29 Apr 2026 05:34:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455297; x=
 1777541697; bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=g
 fbu7WJ9la/4ta6fCA0xZJPAagAhkvxnjhfe+rByVyDrUz0qohFVowtK/NWBlKlJZ
 p+9WRexEmTTihIQW0agUsOxIOu+sQf1VEAFq1kQ4QIm569mQlQWBM/aWSFxAcqZX
 O147/jP7a8Akq5DtEOfs0PQZPACXXmESGb0Qtm1tWquogF41s0+y7eRGeLLfIdiY
 XH7ye6NbTbw+KGcYwwIvr5ZhnX2MV2lNG7rgArtV7IbLL+g+sbuzgea/lgNACDIF
 52SV7D6WQU0PcbaBldgAQnKOO22L+px3lJHV9mXs8URbrfoY+ld7vvsdcW5G/MuN
 niRyArMFswSyxbgCfIA8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455297; x=1777541697; bh=x
 nJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=bWDDYVtWvw+YQiES0
 x9kYTUUivhwG16qjus6PoAhF5ggIHxuFm28X6PBGjywZuHpUUCzx2Kr77InI6Ite
 z2leiW+kor0U2vTV5ZPtH7umA5hZZPjR2e79JaCBfprDuA8tCiL+7RKVadEwpsZv
 VZfXPIncvIX4A2SzsgHRmoUtTiZY3Zv1FrO4lsVJ6wf82NogGpKlFJDNgrQ57/7F
 FixUgreYzO0XWzU6S9auOlLtxxclb7ujoGu1QNnwq2C2A7tSRnTgE9mdjxE9+Ez9
 9AJ1g5a4drHVYxF+n/jYR0rvAp13t8uFMOpXk7dMtH5XD3+9ZuFSTljftock2a8v
 a7B+Q==
X-ME-Sender: <xms:wNDxaQPcVH3nhFML_RMdvRrkT0SOTL1s1D8k0-W6sNXXiOr_kz6zGQ>
 <xme:wNDxaUxtsOCzizS4NFw-zFDdH79qsXrbUUFc0Y3ekbIi_GneSkhiobYiZlvajmN2g
 diclJ1YaojnfS9SFohXgbafppKnDFLlIIhR0FwaMRPaa55f3C7tPZc>
X-ME-Received: <xmr:wNDxaRsHooQmNbBjwSCzBs-UzRaHRYP6iXkC07WvRy5Oz-apaIsgv4WsU-K-8Yj4AHWKlE3QhPM4IxeCaucFGezjRYD-wCuykOfIeMkA7DxxIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
 rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:wdDxaV6W2VAoPXS7ljPbquv4xhgEoweiVNPwxScQh6cZm4SV-Ce9GQ>
 <xmx:wdDxaYSNUJSkhnynfrML61zZBbSFU_gBP5KbOU9bcKA047EX7KPXdg>
 <xmx:wdDxacq_TY4AjC7bEMoPjGu1PRA4xF96XiLyhCO5i0WJOrsCB34MFQ>
 <xmx:wdDxaeK3tA6ffyVUbYHUiVJUTyBAoGa8DfUDvIUGFPvFzcD507lK7Q>
 <xmx:wdDxaeRPdoq8fn79RiHOBNQQJHkzJgJI94PrFkR8rXXfmmx5XpZ5y5p8>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:34:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/7] firewire: core: code refactoring to queue work item for
 iso_resource
Date: Wed, 29 Apr 2026 18:34:43 +0900
Message-ID: <20260429093449.160545-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
References: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The add_client_resource() function checks the type of client
 resource every time to be called. If the type is for iso_resource, it schedules
 work item. However, the iso_resource client resource is only added by the
 call of init_iso_resource(). There is no need to check the type every time
 adding any client resource. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1wI1Ju-0008LG-OV
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
Cc: dingiso.kernel@gmail.com, linux-kernel@vger.kernel.org,
 shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 5C08949203C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The add_client_resource() function checks the type of client resource
every time to be called. If the type is for iso_resource, it schedules
work item.

However, the iso_resource client resource is only added by the call of
init_iso_resource(). There is no need to check the type every time adding
any client resource.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 144625c34be2..8391c7efab2c 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -526,8 +526,6 @@ static int add_client_resource(struct client *client, struct client_resource *re
 
 		resource->handle = index;
 		client_get(client);
-		if (is_iso_resource(resource))
-			schedule_iso_resource(to_iso_resource(resource), 0);
 	}
 
 	return 0;
@@ -1438,8 +1436,9 @@ static int init_iso_resource(struct client *client,
 	} else {
 		r->resource.release = NULL;
 		r->resource.handle = -1;
-		schedule_iso_resource(r, 0);
 	}
+	schedule_iso_resource(r, 0);
+
 	request->handle = r->resource.handle;
 
 	return 0;
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
