Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E436E906813
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 11:04:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHgNG-0004M9-Gn;
	Thu, 13 Jun 2024 09:04:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHgNF-0004Lt-9E
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 09:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mopuKCNsFYMpSlhKsvvqFov2Ij5rcVHAmkj2/47ed3Y=; b=JC97XxGgXybUl7ehKZV8aagjEg
 ynaS75Xi0mULAQuwmc62Fw2Heliu2FvOVK6H0/VrI8qHyDhi+u4++X3cKzdXfkGmEEmIE2+40R7zy
 lSYwOj5jPCyy74jciAS44gOXS/cnbNKAyN6uLL5HiITzKKH5Miprn5IWLIhpQsSb7xG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mopuKCNsFYMpSlhKsvvqFov2Ij5rcVHAmkj2/47ed3Y=; b=j
 Dw6rnYDoikO58UQr6H3J1cnyeT3dt5jC92UFpaoWc8HainHKsCROr96JA/tsALbWkUlBstUQOC5np
 /hLXUW6pV0AO2gj8Jy/kqdDtXs59EqjzpCgAVNcBOzqJyH61UZh6b+lXQHVUtGtP02EclKN6R4UbX
 ODqSmgdfkmgWNQhM=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHgNE-0004ZO-5N for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 09:04:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B0069114020C;
 Thu, 13 Jun 2024 05:03:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 13 Jun 2024 05:03:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1718269428; x=1718355828; bh=mopuKCNsFY
 MpSlhKsvvqFov2Ij5rcVHAmkj2/47ed3Y=; b=mFkTo+oa0dTbfbI27ZZCRMCMmY
 6Cs33Hse4lLVSiyQ7CaVAVpmWR1+kjsyk6JS6041sWtzOvIhovUVv4wyLupawdX+
 BaXO2z2KpfIH4V698ACQXXqOvOvPWGeGWlNQSvZZhsE3ENbGTJGcoLSgtBR4542T
 Hi7IcKJOBPMGPT0P2AFdhjn/P6sEy7Gxs9rbb8SuunbeMslEI6Sa4ajDzCpFI0t5
 1kz1e0JpWrdxfia0ggHuLBYS1hgowgF92vbmrQloeN/uHGXcOIrnMIBoWFdkibA6
 1gcg0LEpRuVlAALk/H1esX3RA5BiwCCzVCzplpcLg9A3WZG+Uy99bJdM2s8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718269428; x=1718355828; bh=mopuKCNsFYMpSlhKsvvqFov2Ij5r
 cVHAmkj2/47ed3Y=; b=ZZpYo5X+NGVOUgYFi1ZUiogvzOSFKNVgZc91s0qppJPM
 nzxECnMa9bo2cwnKRUH/0emS2Qmp2wsFwh8Q2u9+bSTygsBhFFpqbDPZyPKkD9WP
 jS5ZQntPOAKz72m7O+fXvr+4ZW1yw51HpQPHYACpiQVA6MUB5D/9vt7cm9NOdcaj
 N2a3GS2XoWVmScwnk8fVZahNBJINhD+O4LJ3oyuqRzQDquRtvPZKO+ULzLh5fVqj
 yOdtrGRXH544WYPSdb50mvBsmprp3uG3wqRoqeTHQK4Iktd4WPJ6PWs21j9987/m
 NHq+MGXLwcuNC9fyHHAbA7Qd2+wGFsfoV7k5cyexCA==
X-ME-Sender: <xms:9LVqZpyrN2AmdFEzGJ77NpV3YxG19aReixOypg5plVblhgLacWiXvQ>
 <xme:9LVqZpRVqL_UNmAsJvKqcOUl9-zCZegfuXPAKZXVlHxqdD75QoXmzPcxOU5BOMLjv
 JeW5CPd5hC2WdMAoxU>
X-ME-Received: <xmr:9LVqZjXAXwtGEu8Ra3uNt2-CWAxhr1vs7Zy_d7wAUJI8yMWyb5aXTif33BK2RzhXws800_lXx8KhulF7Cw2ErB0AfTNkDzGb212-e4QGTPiJaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:9LVqZrjgM0qsGC829wSewW5q3hUMJT2mkn6IWVMrNftgHz6Q2wJh0A>
 <xmx:9LVqZrDC3ymUa1AHAs1V1l1ULKjwuHiT7aUsYjo7m6MwdSQw6xsPhA>
 <xmx:9LVqZkKhVniFXhxjfRMiuRzmU2amZMynvmYIr2FcyBgsqIcjXWoMeg>
 <xmx:9LVqZqCGOWmtRa0XiSrICpgMlt6WhRc-Oxg6cz_lxFKsSbzozZoBEg>
 <xmx:9LVqZuN1_o9iQcgy2JYhS7bMbqiHASSRybavaijwo6RGD6sGxsevrMxp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 05:03:47 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: fix website URL in Kconfig
Date: Thu, 13 Jun 2024 18:03:43 +0900
Message-ID: <20240613090343.416198-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The wiki in kernel.org is no longer updated. This commit
 replaces
 the website URL with the latest one. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/Kconfig | 2 +- 1 file changed, 1 insertion(+),
 1 deletion(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.153 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHgNE-0004ZO-5N
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

The wiki in kernel.org is no longer updated. This commit replaces the
website URL with the latest one.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index 869598b20e3a..5268b3f0a25a 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -11,7 +11,7 @@ config FIREWIRE
 	  This is the new-generation IEEE 1394 (FireWire) driver stack
 	  a.k.a. Juju, a new implementation designed for robustness and
 	  simplicity.
-	  See http://ieee1394.wiki.kernel.org/index.php/Juju_Migration
+	  See http://ieee1394.docs.kernel.org/en/latest/migration.html
 	  for information about migration from the older Linux 1394 stack
 	  to the new driver stack.
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
