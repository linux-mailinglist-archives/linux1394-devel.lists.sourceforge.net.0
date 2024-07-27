Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A39A993DCFC
	for <lists+linux1394-devel@lfdr.de>; Sat, 27 Jul 2024 03:52:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sXWbI-0004nw-Kg;
	Sat, 27 Jul 2024 01:52:00 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sXWbG-0004nl-Uo
 for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5LgcTsMaCPNRlo2WOdOxJ21YilJNtO6i9Oig6aCr06Y=; b=eijeZFLIMJ1fV8/h5pRwunZLRk
 NsBVCHFe1BZ1wPnn91GvauPf32vIiHbPgSOSsyBUYRePY03NG+l/Ig57+RAgP7KHz2vRgiKNiCZ8O
 B6VF4T2u4JbvSWS0mJO/0QRYYfKXDKwZHV2jJ8qXfwcOrL5YXR7Ip/Kn4EmfeqbsLv6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5LgcTsMaCPNRlo2WOdOxJ21YilJNtO6i9Oig6aCr06Y=; b=R
 C9rXUFFIjV+A7hLKn6ldA3ckUYcgYsbscG5XfJYkss9o8pWxkKBpjB+mDp310tcTMYZfNditl6FKz
 I2UXluzbdhH8uKwW2herZUEsigszz7x5ddh0jh4WWxLsv4mhwbCS56WatsWlC4Y5IfVrL71aP742s
 xqGU90qYqDDirTAk=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sXWbG-0004u8-4R for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:51:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 89449114015C;
 Fri, 26 Jul 2024 21:51:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 26 Jul 2024 21:51:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1722045112; x=1722131512; bh=5LgcTsMaCPNRlo2WOdOxJ
 21YilJNtO6i9Oig6aCr06Y=; b=BVc2VNAVOksln+s73BVhjTfWsvENSAwtfoDl3
 sE+xIlUTIeEOCpq+YS59PqBiYIR3a4m2g9aUGdQBsncmDMoAsrhtbkpQbDLWPCrX
 +s18oqobznnPk4kXhxDJLFlJQwbt7LvFYah94Bv6FhUscWZcXn4TS6mGhM4He8+M
 VE7RvhLpAKLMkr5DbjzEvuQaSXQBS+7sPOdfUYZJ7DygzNSUPL+HeMfIcYh/VyaY
 D2idK3jC+Iw3cSSt1c6bWWAMctB+42ezhYta6KLmRZFaPOsNUO/Ro9EHXFFQWzDo
 x9I41wt1Zr3afQZlgEXxM7FdIvNZAuJG5BqRQFwFmDROw9XpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1722045112; x=1722131512; bh=5LgcTsMaCPNRlo2WOdOxJ21YilJNtO6i9Oi
 g6aCr06Y=; b=qgPEWRUzOAQSNGxidgsLhodNu0BU3qZW0vkYKU1fckscXP5bnTS
 DVU3Rxr42kJxJtfiLzxbH2z3HMh+dPz707P50oDEBl8pL0iZZ5Hu3Js4g589D6dx
 Hzy5GC36bqXlrsCtz/TquPERTI2lz5cKtakhMM75GMyl4nue+ZTgIIEBw2Kh6ppE
 /syZJ14aQn3wZRozSKigOhuc5AR+wXjm/xcM0JkT5Sj19lMYbW7s3F7a0csBOiuC
 5YSwWpNPrLfCdsLKE1cmuvaWK/7fdEZVJOKN8ZwA9obGuE631MDkmXUrvzpneBuu
 7Ym11vVfoGHl+aBKJnwqxLpYFoY5VR3GYvw==
X-ME-Sender: <xms:uFKkZsCZ0VcGOsbUV3zjxyz5cEuhhqZUzxACOvOitdl9cnG5iBwu2g>
 <xme:uFKkZugSVzkq9tAjd8DXBc_PJwAav3oQIJNWm1QVHCkFFhLhcQyOW3N4sE01JDh6i
 r4xMbefStGM-7yBge0>
X-ME-Received: <xmr:uFKkZvnUTzqmeGW9BoBA892njE8sPv0FVnUDRB4ySqI_s9YCNb1n88yNqzuGDgt1ufGHw4ZM5y6rizfyZD_79aKpwlQo3TeEstU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrieeigdehfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkgggtugesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteefieetfeevge
 dvgfegffehteeljeekkeelueegfffftdfgtdetteekvedvvdfgnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedt
X-ME-Proxy: <xmx:uFKkZizQxBUThvAqfu-N3c5Cgx7U79hGUsr9n9kAIneK-elN1abOhg>
 <xmx:uFKkZhTvp2RogDOpl-lSRGT4f8TKhJW0qRTocpLNXyCrpIDQqDsMFA>
 <xmx:uFKkZtZfo_tbJeqiPw6LmGZ77qHNzmusEL4TSQYgn0ETPV_aMKAstQ>
 <xmx:uFKkZqSjj0zz6-lxwLdQobgko8DM2YQytS4QUvab7FovdzO_bqfpFg>
 <xmx:uFKkZqIJBzezJdv48fhLd8eaHpnXhXYGD5DIQKsm5eGO9mZyJOQ_9mgZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Jul 2024 21:51:49 -0400 (EDT)
Date: Sat, 27 Jul 2024 10:51:47 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.11-rc1
Message-ID: <20240727015147.GA163457@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 tiwai@suse.de, edmund.raile@proton.me
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply the following changes for v6.11 kernel
 to fix some regressions appended to v6.10 kernel. They include the change
 of sound subsystem and I have got an ack of sound subsystem maintainer. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sXWbG-0004u8-4R
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
Cc: tiwai@suse.de, edmund.raile@proton.me,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply the following changes for v6.11 kernel to fix some
regressions appended to v6.10 kernel. They include the change of sound
subsystem and I have got an ack of sound subsystem maintainer.


The following changes since commit 06dcc4c9baa9e92896f00d02ffa760c0988b4371:

  firewire: core: move copy_port_status() helper function to TP_fast_assign() block (2024-07-12 14:34:12 +0900)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.11-rc1

for you to fetch changes up to c1839501fe3e67d98635f159dba8b170d08f6521:

  ALSA: firewire-lib: fix wrong value as length of header for CIP_NO_HEADER case (2024-07-27 10:28:36 +0900)

----------------------------------------------------------------
firewire fixes for 6.11-rc1

Two commits are included to fix some regressions. These commits should also
be applied to the v6.10 kernel as well.

The recent integration of compiler collections introduced the technology
to check flexible array length at runtime by providing proper annotations.
In v6.10 kernel, a patch was merged into firewire subsystem to utilize it,
however the annotation was inadequate. There is also the related change for
the flexible array in sound subsystem, but it causes a regression where
the data in the payload of isochronous packet is incorrect for some
devices. These bugs are now fixed.

----------------------------------------------------------------
Takashi Sakamoto (2):
      Revert "firewire: Annotate struct fw_iso_packet with __counted_by()"
      ALSA: firewire-lib: fix wrong value as length of header for CIP_NO_HEADER case

 include/linux/firewire.h      | 5 ++---
 sound/firewire/amdtp-stream.c | 3 +--
 2 files changed, 3 insertions(+), 5 deletions(-)


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
