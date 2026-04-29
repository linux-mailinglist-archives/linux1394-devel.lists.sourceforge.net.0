Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFj7ID2s8WmGjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:09 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 484C6490138
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OboE64aPRiHzufW4uRATxXAnticJyu3UiaRH9rndYzU=; b=cPw4JV6OKXM/OOipHl/+L4MUF+
	YEC6eOV/IMWNgOid9pcu4duRmaE4K6UG8wCmlst19nUu67RJhRqaodk8t4yNR+fe05DY6dnJu8mgG
	GT/T/4I2mwF1GPusDe3MQWtvxsCWuVni8WlJ5ppJc2KYWaeGWsWdyy7E7de7S2okodsU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHyst-0000vu-Fv;
	Wed, 29 Apr 2026 06:59:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHyso-0000vF-7S
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=fk5+j/UqhlUOkZk8F6ZomewHxU
 wn92tWyjzgiZjRcqERm9ZYShSfcXHBR5SnJdq4mY6TvXW4g7mR1KqXineVCVKQHSwgQty9HdKiVEW
 pdSb7P8YzWMCHT4OA08dEQrlIgugu44Ixy5X8+6y4Bot8YuYN4rbzwzCx/Dndyfbfyg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=kroo7ejM19rhcHZEB0kiF9J1yp
 OwVJ9HGB1AWWRBiSPj9ni0isyyW5JN0BNF2BxJ2F9kslF8+KM4pTi4ZPudSHz9LDFWC69kcI2le0i
 oYmYFb2pD+/SUvFSyjJv1oF7NyYQZx1Ua+mmGxuZvnL16wWKyekSFlJYVGLZ+4SBFlDk=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHyso-0004XY-BB for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:54 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 85276EC0184;
 Wed, 29 Apr 2026 02:58:43 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 29 Apr 2026 02:58:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777445923; x=
 1777532323; bh=xnJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=u
 S5BV5mL0/GarmqQ2falJBSJHPWSHyVPR+ptMnJUk5kD2hJpeRCYh7cYTXhLzjlLi
 FvEpvjwsAxyc7UeplL+OdewaOKyNOuysof1jSk1jWSUcLcTk64kgFl7x0Ci7t6lk
 W34g7oZC4lHwRlyoruJdfJAQaORlVH+uyU/MvMWNkh+DRswl8MMWzmT4/gxPAQCL
 3aEZvI2ZxlryJk8ns9RtPLPNpyRcl+V+P1OeVXxSIYbpKxISTtXW1lZr7xtsrTuw
 WbMlBBFRWvtRTJNml07Jf0SG4FXYRhF6k1dLbJeuOhQ7CfrTuQz7A1osY6YkV+o/
 ZE8JHD+BltPSy2XCYXM3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777445923; x=1777532323; bh=x
 nJHF3q0EV3mTcRvsT29Ye1XRknJ05vRFufwjT8gOdk=; b=OGGoIPq6iweRMbn2C
 FeZGtexxSq++/luwtXkn8ooZf8Ku+DqkYIxNaR22RC5ZK95lRbmjfxjoFwj1bio3
 5/zNpv4+10YNXFiNE7XrdtpN+MV3aEjGe4fDVolDDIYJWw83F2jMmismtocTxgzd
 nuV1pPyG+1PqTWbtDb4SM0/dDhJh0m/UlS9ofWp/bqu1TA+uh7kYC179x/e0MVsX
 yS3fl6jLnKZxUUPaubh8EppmnWiebKXvUfbA790gbHESpFCEms1rt6/u+NMts980
 Szpdce9nhdUYtyh0p4Xp0EOG58qK/GqBc4J4UGhk5cSMVFO6FpECFxAZvuLWhhc8
 OTtxQ==
X-ME-Sender: <xms:I6zxaTrjyw8MoZ6RxJuj0QI9k5DBd5mBAhIui0f-1JCqv5Ubw9IFAg>
 <xme:I6zxaVHTP18NDz-AnvEBBQv52vlYwDp6JNQ2rH3guL8U0t6wTSFPjPwm0mX-qJxB0
 NZ5SIGt-64TTnbJde4bUdVklE0vM_nDMHM3bWIlZZQhsV1XhcggaV0>
X-ME-Received: <xmr:I6zxadnHMScWKknPxgdc6HTV2Y0KyfIHakl63uUkEolCqPg0ESeQZNS_Y8faH8KCP7njrR4nqn0oZ5ikM4SzDmqPL4ybyV-Sg6Lr33uZQX3QdA>
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
X-ME-Proxy: <xmx:I6zxaQmRlbx1BLEsQW3_gAP7yEbQabV-JMI7ylX3pgMeHjjOF1wGlA>
 <xmx:I6zxaWtSqpi5CUXQF9rNDaTKYF91xx_zJdejaFnCaLRV1YyfiObWRQ>
 <xmx:I6zxabm6xtWBsyqEii5B-fdA82Lya__P-fzXzVLoX0n-LSuoGOc1Zw>
 <xmx:I6zxaZvAvo9jwp8uAw8L1CEUig6PK7qOBfhjaKI6aYMMNzFKsCTh2g>
 <xmx:I6zxaZk9GRhF7gWkq0kNzfAc2lfqBFcZnjisE46PpE5z3qPqZEIYJAsK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/7] firewire: core: code refactoring to queue work item for
 iso_resource
Date: Wed, 29 Apr 2026 15:58:31 +0900
Message-ID: <20260429065836.155820-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
References: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wHyso-0004XY-BB
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
X-Rspamd-Queue-Id: 484C6490138
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
