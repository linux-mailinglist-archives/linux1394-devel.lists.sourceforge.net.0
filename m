Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDWRFT+s8WmwjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:11 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C47BE49013A
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=689bDQugLdBXyjOBoPMXV+lCdNaKfMjb1Wc8XXHavAs=; b=RIyx0wEzDm+XIUbsRMZR8kijbl
	rvUmtNxrR7y53v1d+/aJXIcWE2V7z3T8i1c6TGQeBbFUb3SzGjeMIwwghazzOlreb3qYcOorAjDcJ
	MmJ5yn/ht0yMYmY3JuJgosocsfBEad1u/sKB+FALXiqNRursycnvDCbbT6OUEEC24I/A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHyss-0000tb-EV;
	Wed, 29 Apr 2026 06:58:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHysp-0000tN-O9
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=Z+v7pvER5DXLjMuRsjRrri51e2
 Ui8pxD8TGbSkLgZkCA+EzjNLngDD+F2NHV7bYGAcn0HrwbUveZW3i9Gsxbi8pK7E5gdvzNZq5wxR4
 BI/MJrJljKRb6UhrQLPNaRbW+RMyju9Z5snKnQqckfBgpVgWyHau2cROFmaBKyDHaRU0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=F4vOC6CU4zksGVNk8Up07DiRzf
 cn3NyenFl19j08Jg5edKakebPkiDP8pSOIlz4eUguEIDAmJKVwNaeMwNWHKvtZ58TmOxjCJXDjfdR
 4ux5ejxRPnASMxsMTUOmyLH/iAi/dfIdsht0yqmdi9qs+TOMML8sV1HTcqODN098+ZVM=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHysm-0004XT-Nl for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:53 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 1BF1014000E2;
 Wed, 29 Apr 2026 02:58:42 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 29 Apr 2026 02:58:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777445922; x=
 1777532322; bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=L
 kYwERmUVlo/un7w01CigkQgw9QAL9NmdrXvv+KT3mVMy3dMJOvTZ27MT5Vcr+Ccs
 QGoNoPu+iJjza/qd9HUYCbYfJ16pUn6XbBDnM0dqHR5fwngFAu33Z6KgIHn0WTee
 yy1uJHlDyiLM7dsjabkox8Sl7Xnp7DakXGNxYqpqy4XIRImGha/0pfwmdEVZKdyh
 A/qHxqd7O2HhCYSHDDWNQDFIYcJfztEOQEIyx7jHOhhBHmIpQP2uAtiMekQWrEeb
 bGwkXJRSBafAKN9J57shA/F4AxFnwOcHlEMvjL2GpOOcDtc4LHlMGKCJInG6Ldfe
 +oXxcmJIoyLk0rjLN6tUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777445922; x=1777532322; bh=l
 CoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=IqyyLAisIAD00jmjA
 RsKHCpYWpbEqVR/io0tSbhJU+pPuGpBw/wJxnEvEs4+WZtdnVxgvqiW+85tY48pb
 ErcjL0FdlBPstLU01TZt0R6vR+3PaOL81rcvujUclk+oBIT+jxLPVKOx9fOB5rqj
 z0XzDeAN2zR8G80nP6HHrV6a9zYyuMxRB630Lo3eY0oo5nYRSaR/J/+IdHLq5V17
 Z8iDgfuhyZH7wYXQazQHgAje+QvOPAsSm1cWM5oYj18kTw1qnqgcC2Twi5Sjy6j0
 Ij904zWa95AXqhKSTKOhpeHUOJCxtuD6i5xshqzukm1c0OoGePtgdF2DbY8X41Vl
 Zg01A==
X-ME-Sender: <xms:Iazxacft67dm39EmXgRqBK8nssV3_LNm_HlBovoAq0VSTJ90FMTftQ>
 <xme:IazxaVr_Wr48weuHVcKGMJ3lezVJjiXSd5YApHORhh_3y03ojPPuIedROzS7xu267
 V89O9x9JzbtYDKbDVLPUZNKEMNNphjKoZfWax0Niq09jdIeU48hoA>
X-ME-Received: <xmr:Iazxaa6dn3WsRoRq1QznqipND2OHY4EDFrdpMzNoeTsdA4crznjZwzhQ5Na63uUZMSghSBU_rr6c1T25Ul09Kt_XI9zYXUuVEUIG1msLXQI0eA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekfeejkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhm
X-ME-Proxy: <xmx:Iqzxabr60qXOmEUSGSHbeiswX-74qFeZrYN03MR2uI8eixv0m8N03Q>
 <xmx:IqzxachY8QFrZUCoOUJGBbiC85U8L1_1iFIBPRgDPesIK4ZMM6qIfg>
 <xmx:IqzxaVL-d_wjKOssAVCpsgjeLUtMFGBjc7POVJaNatXyYSQIxfXNeA>
 <xmx:IqzxacD-_0oZcJCqtCp_guXk3VxHxUO0vUxqt6zrpj2HsodPcXdaZQ>
 <xmx:IqzxaUpAzgIjbymJLFWgMV2uqNDEjPCBDxiKKYcDrQHFD8VZrniK2MWd>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/7] firewire: core: code refactoring for early return at
 client resource allocation
Date: Wed, 29 Apr 2026 15:58:30 +0900
Message-ID: <20260429065836.155820-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
References: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The add_client_resource() function returns zero at success
 or negative value at error. The critical section is already protected by
 scoped_guard() macro. In this case, the programming pattern of early [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wHysm-0004XT-Nl
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
Cc: dingiso.kernel@gmail.com, shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: C47BE49013A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The add_client_resource() function returns zero at success or negative
value at error. The critical section is already protected by
scoped_guard() macro. In this case, the programming pattern of early
return improves code readability.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index f791db4c8dff..144625c34be2 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -507,31 +507,30 @@ static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
 static int add_client_resource(struct client *client, struct client_resource *resource,
 			       gfp_t gfp_mask)
 {
-	int ret;
-
 	scoped_guard(spinlock_irqsave, &client->lock) {
 		u32 index;
+		int ret;
+
+		if (client->in_shutdown)
+			return  -ECANCELED;
 
-		if (client->in_shutdown) {
-			ret = -ECANCELED;
+		if (gfpflags_allow_blocking(gfp_mask)) {
+			ret = xa_alloc(&client->resource_xa, &index, resource, xa_limit_32b,
+				       GFP_NOWAIT);
 		} else {
-			if (gfpflags_allow_blocking(gfp_mask)) {
-				ret = xa_alloc(&client->resource_xa, &index, resource, xa_limit_32b,
-					       GFP_NOWAIT);
-			} else {
-				ret = xa_alloc_bh(&client->resource_xa, &index, resource,
-						  xa_limit_32b, GFP_NOWAIT);
-			}
-		}
-		if (ret >= 0) {
-			resource->handle = index;
-			client_get(client);
-			if (is_iso_resource(resource))
-				schedule_iso_resource(to_iso_resource(resource), 0);
+			ret = xa_alloc_bh(&client->resource_xa, &index, resource,
+					  xa_limit_32b, GFP_NOWAIT);
 		}
+		if (ret < 0)
+			return ret;
+
+		resource->handle = index;
+		client_get(client);
+		if (is_iso_resource(resource))
+			schedule_iso_resource(to_iso_resource(resource), 0);
 	}
 
-	return ret < 0 ? ret : 0;
+	return 0;
 }
 
 static int release_client_resource(struct client *client, u32 handle,
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
