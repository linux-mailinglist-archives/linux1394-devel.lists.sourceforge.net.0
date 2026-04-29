Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLHfM+vQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEF649204A
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=689bDQugLdBXyjOBoPMXV+lCdNaKfMjb1Wc8XXHavAs=; b=FvcbXFxLZx3RsE0IdarTd9GZA2
	WvSRZK1KlnPLdSAA5VSaTT2quh1yGjyH59BT3o44ZXzOj1m7xriqOEzy5iRd4CGsHCfgSDepVURR8
	QzmZjj6bDfodHZ15JWYMuX+8nNIVgoAjOOWYcZYaqwdEisEZVBKofX7bgL+JQl7nNAvE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KQ-0007iD-QD;
	Wed, 29 Apr 2026 09:35:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1K0-0007go-M4
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=O5utyDO3vuNoqwDtvX20bMn0qy
 4I5/6LQV7a18yRtK+R5he4fC5d7VPUo9OqhZ4ux0EdBXRVkwUxfr6E66MC6PWzCHd0B2duz9osWFD
 C841Y6iPL+aD1l83odBzf4jNe5FrAD6A6RMHvJT0fyHq19Ht17ZU7zomETTxfBEfvtNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=hWLOk/KRyu0PIjP307m8NHBrJV
 gYZO/pifsq0XPjZwvyd+A7eQlfg6asgmV8eqp4qU9ZzDcQ6k/rvaAywny/uhKdmc6eiac6QtRPcUe
 Y5y+PzXq8isiiVGkNiC+FpwrhOpCJwY46Ba7/DpGIDjSGmiLEDtXZgwG1ggTrVZjh2lE=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1Jt-0008LB-7c for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:02 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 7531CEC0197;
 Wed, 29 Apr 2026 05:34:55 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 29 Apr 2026 05:34:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455295; x=
 1777541695; bh=lCoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=g
 xj7ar75iErYcV/v8w22DUbZ7s2HZ3AikmwxjzYuqUrphp4IghYY/s3jgf+T+3uiU
 N3j9ZguFOnVSz7R1Kad49pn86LVTkCiBi8aCD/MLOGYG8da5s7S0+xB5gQmWiu6D
 hMKs3kkN8EI7K7adFwFiwFi7oD6HRPLJ+/bA+4f5D3Pn+3oX+XlILrk2SZDBMuNH
 +7hxRGF8m5Nt0zuqc+88DRVP+moqGObU7eUiu+a/6SAhJnxjrVSx8jvk6W0qThkb
 5s516l3vfv/CpY5kwHhWc4WaobimU7A4ST0ksffmCrYrr2QjdiMwWLiC8rkdLDyO
 VinYh9Vv006huxQTcWe0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455295; x=1777541695; bh=l
 CoiG1y8GvthHZ+IXnyjvnIwvTB7KwAmo9ojiPaeOQs=; b=Jsev29FB5ob03/apd
 vr6J1DJmHtzzbryAd83UL+mxLD2L2VFAZdvzUQSwoCosBxzZu/1Y3vu9TfBNEv5R
 YTlSXgjlSkmqcySnVpZFIZ+fMhc1zO1rnLTGywpG4w1FwuxC7WB1Bm48+SGyDaUv
 uMsXAe3WzMZ1+2wAa/wxmeKEoqYT9C/+AL3+T9mnW4FSFvA/XXiLNKRdB29uqKpi
 SPkYhvpIm+CUbKoqoNV8ZWhG8pzmwHrfm1RFR7yVuM9dN3xGb4mevPcRn8m7fhoL
 +jcXhb5tKVCJhgz04mHLu7JTg6jHRbuhjIkOjbNFoOTo1Piod5LGR9yQ4DwLtLGK
 IfVdA==
X-ME-Sender: <xms:v9DxaeRDzxHTz_iTYKSnXmpP2Y2wtFOSA3NDkrZTBtpu8Lv8mPxnLA>
 <xme:v9DxaRnOjvORanxKrw_a8h58YZZgX1y7ezEcivZUwbBsXDAS3rpcFebVClewCWNQe
 -9pXfVITRcCgUmYXArLm7E4lnKj5aOOhPCEwHlD7tAUYoS6JLuh>
X-ME-Received: <xmr:v9DxaWRsRVsSi2C8lWAK9MjMgIeVhWPSWiichSvcN2HYYjKe5pI3JbdEJ2cSqmNqhWCv4wMOqmy7N9Kg2OZdldHlkdjU9L3tIYrH4WgxpClsrw>
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
X-ME-Proxy: <xmx:v9DxaXNMty6UEzw6Lj4pJgTMuI2DfbO0NKmYpxMoiuKOVqBHmPmjaw>
 <xmx:v9DxaXXyqU4PDfcD_XDQrKP_Hr_0BE1vcGU-or_tH6LCtRSm81FEWw>
 <xmx:v9DxaWdAOkPdkGzlvxtpfXLNUKVEiHsymZGtN6U-cPGA5-KrVsfKHg>
 <xmx:v9DxabuIsEnU2tUst3oETcMJSSjNtBISNoq7QXWKiccVozuhpKiTIg>
 <xmx:v9DxafX66YDdKJ0FEqgECorG5hjCky5DuJeYMipG8L91oXWFL70PwrvE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:34:53 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/7] firewire: core: code refactoring for early return at
 client resource allocation
Date: Wed, 29 Apr 2026 18:34:42 +0900
Message-ID: <20260429093449.160545-2-o-takashi@sakamocchi.jp>
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
 Content preview:  The add_client_resource() function returns zero at success
 or negative value at error. The critical section is already protected by
 scoped_guard() macro. In this case, the programming pattern of early [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.144 listed in wl.mailspike.net]
X-Headers-End: 1wI1Jt-0008LB-7c
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
X-Rspamd-Queue-Id: 6DEF649204A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
