Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A499524B55
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 May 2022 13:18:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1np6pl-0000Dd-W8; Thu, 12 May 2022 11:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1np6pj-0000DG-NV
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CnE8GHpg+jzj9LPq8w8c41s+mgXpmhWzStenbTZMJOg=; b=AmKrBTAxLgCEaTYfw2hoZDQixr
 dw7uq7csixlMBjCZvLfQGZ7e17xqk4s8Ns2iGi8B+twy2x8yY9rWvYccnx1rkK9t8YvYzZXEhUln9
 UCZyY/Tx3QU/YgY2ceCM7QwQ/XbAq9prpevtDeYZuL/YMnkOBF1n7NyCgmN9gzP50wWI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CnE8GHpg+jzj9LPq8w8c41s+mgXpmhWzStenbTZMJOg=; b=e
 mxWP/ataEt9GM1S8q3pQuIRY2ruZIEuKEQFqeS+d/raAb8WQrb9jyMbnVkfjag3wDhuPJNOsZIJDu
 qVOKpErx9zYrA4NUbF0cM8jq0+RSxDKCZfed1yg6IUH+avXcYARMPnam0rlBdxtU9VPtFeJv8lKG5
 QBdRHNp8tycVm2LA=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np6pf-0001mh-WA
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 358DC5C00BD;
 Thu, 12 May 2022 07:18:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 12 May 2022 07:18:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1652354282; x=1652440682; bh=CnE8GHpg+j
 zj9LPq8w8c41s+mgXpmhWzStenbTZMJOg=; b=mxi1B50dsSOKX9xAZ+h8+iiUdI
 Relv+atZtjnfv+qZYRmNI5LO17cdcN+6Rlwi2v1fU/ssqCKZYwZSpL5MxzXgS7xN
 5auP+7/Tx3DZJF0LXHgt08QzmL7+UbedKBaE8Jcj0+s8TYqGv1l6h8vMe8LvAfO2
 kRLoZ7qJaeOasgVrlq3TFALpZh92aIKQ8NmmSnD2gB/3zgXy6pA8jqK/NE8a1SJ0
 9gJLbqDb+Qs+9Ont3Dy/M4qo0UoJdPALfRIr9xZ2RJ287N5P3DUyk80fKngoMGtq
 WdA4cxnn1jVVN+Qik6/IItEkbtkIPp09I6Slo74RsAzphZpKikOOMS9XvXTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1652354282; x=1652440682; bh=C
 nE8GHpg+jzj9LPq8w8c41s+mgXpmhWzStenbTZMJOg=; b=jtgo6LvsO1PsabuOh
 PwgJ+k+xVbwaWlLp+vSyYnNxmF0H5vCSLeqrpqHG+S1LoWi4ghDweKv9GMxBNlVZ
 SY1bRZ4Pd2tbseN6TYO8SjptyOEhhdp2Oh1ouIvVQciaS6fAnhP6pRjA2sJuSQWq
 uafWW+6yUdi9mpjURX7ssgc71382sdegvTA12YImhxgwnofhz86pN10iqwEEj75G
 H3BcMDcXv9715jdi0JPmY01tic9vYP2GtlGEv4KJAmti/07SedmiSaAGH+nrFQm0
 DNc643QOGiOBw04Pe/Jod1VXDLVKWoADxS2gJyQpcZ/cdzIAH/gBpHz9ie029BL0
 6SwjQ==
X-ME-Sender: <xms:6ex8YtkTyi3a1xjjisuXwY5_ndfO804euR5p5_YZQpQcZfvy7zZzwQ>
 <xme:6ex8Yo2F4c7BtiwiJs3p1TLQVZXthbLsxD7KuGVuHGuJNNeSTvCRDte9du4RBV6BG
 5aj6w8zoScE2rBG-qw>
X-ME-Received: <xmr:6ex8YjrjXg9B7z7QTQ_SWtaUYhTz40_2NJuql0WzZTm7kR849ucjeNH1y7pSFMvkm-7HunqDvu4kd23YZiVSDLk1cI8JEDsI6craHdvuaCpva4DYq9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrgeejgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejie
 elheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:6ex8YtlH6NVoeycKTdGPY8GJQ0gIQV_ZjKtZHE8Vm4_vIdBO-mOnzQ>
 <xmx:6ex8Yr1Rw2oEqy8KYi6dSPeYhbD9sZRBSXay9HU16aQc6tBKsXebrQ>
 <xmx:6ex8Yss3vLFwd7tZeOebPbxyHZQW8CnbNH3omAYMLDCWlReRmQsRgg>
 <xmx:6ux8YpD5DQOWiKJ6paRdYrMcYZ6q79X42wr80ho_0BzvdgmUhce0EA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 May 2022 07:18:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 0/3] firewire: fix minor issues
Date: Thu, 12 May 2022 20:17:53 +0900
Message-Id: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset includes below patches posted by several
 developers. * [PATCH v2] firewire: convert sysfs sprintf/snprintf family
 to sysfs_emit *
 https://lore.kernel.org/lkml/1612424420-96871-1-git-send-email-jiapeng.chong@linux.alibaba.com/
 * [PATCH V2] drivers/firewi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1np6pf-0001mh-WA
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

This patchset includes below patches posted by several developers.

* [PATCH v2] firewire: convert sysfs sprintf/snprintf family to sysfs_emit
  * https://lore.kernel.org/lkml/1612424420-96871-1-git-send-email-jiapeng.chong@linux.alibaba.com/
* [PATCH V2] drivers/firewire: use struct_size over open coded arithmetic
  * https://lore.kernel.org/lkml/20220210060805.1608198-1-chi.minghao@zte.com.cn/
* [PATCH] firewire: Fix using uninitialized value
  * https://lore.kernel.org/lkml/20220411105205.2520784-1-lv.ruyi@zte.com.cn/

They are for some minor issues, while preferable. I expect the patches
are going to be sent to Linus for next merge window by maintainer of either
Linux FireWire subsystem or sound subsystem.


Regards

Jiapeng Chong (1):
  firewire: convert sysfs sprintf/snprintf family to sysfs_emit

Lv Ruyi (1):
  firewire: Fix using uninitialized value

Minghao Chi (CGEL ZTE) (1):
  firewire: use struct_size over open coded arithmetic

 drivers/firewire/core-device.c      | 6 ++----
 drivers/firewire/core-transaction.c | 2 +-
 2 files changed, 3 insertions(+), 5 deletions(-)

-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
