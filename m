Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5860BA791F2
	for <lists+linux1394-devel@lfdr.de>; Wed,  2 Apr 2025 17:16:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tzzpV-0004xM-6U;
	Wed, 02 Apr 2025 15:16:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tzzpS-0004x1-4a
 for linux1394-devel@lists.sourceforge.net;
 Wed, 02 Apr 2025 15:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sqQe3ur961jEGccmSiNWWYEe5WbZ+exhYjcqLTWqpRA=; b=GNSCFTgrb1Tu9OXeOTMjVAeJwW
 KOe2MZdLGda48v8h/aPMayvn/Ck8E3rHJyEe3OtbjNSiY7dxneuUhwiv23QU6+9zev5JHNvX6qSXq
 dw4opvslCzeLqthXneLCtBMRDE6KzlEgLszFQzacZqlulvFsb7wiw9ig/8Atbqw2MtPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sqQe3ur961jEGccmSiNWWYEe5WbZ+exhYjcqLTWqpRA=; b=g
 iv0Oti8sTE/YaHWqPXAdVOpNctp33Aq1p06lq3qit/vVhfEgyN00dywCvvhHMIzGtTfUzIfQF+3Xz
 RUAn2Ou6P8RMnE6hI3XAbga/WwFb/uCjsHayI8r96Jqh7tm1vuaNYYbzaZO/vmOW205b/LfgSi3eB
 LXAXMLQVHS19WJpU=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzzpB-0004za-Py for linux1394-devel@lists.sourceforge.net;
 Wed, 02 Apr 2025 15:16:34 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id D939625401E9;
 Wed,  2 Apr 2025 10:19:56 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 02 Apr 2025 10:19:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm2; t=1743603596; x=1743689996; bh=sqQe3ur961jEGccmSiNWW
 YEe5WbZ+exhYjcqLTWqpRA=; b=TazZ6EKzmvd7ypRnQcSZvh7cjkYcgkoebM2jL
 x4q5lagwTlfDUh3A0tIPhf9k/f4ak72Za49VOEWQbN+giGEfTjvZCN8Eolpp7e9l
 CTrrYXvoyoZSGUOp5Iln/fd49EOdghqoYcE5be7wSYANLUh9/m1XM8+FAbLcP4gn
 +ia1P11YqDjTKPpKrU3P3lg9xf96rCIIZj8wkFfR8lpYXwob7Q6lOlIdbWhRPCax
 XABO/pAnjWYcfT+9UnqZo63HLXBluo2GwSVE1F5OWukodE6apkffUgqogYCyy1uf
 R1KOnoByplSe+fEsD5F0pPG9emtn5/wS+yhtSLR86aw2kiGtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1743603596; x=
 1743689996; bh=sqQe3ur961jEGccmSiNWWYEe5WbZ+exhYjcqLTWqpRA=; b=G
 BIZ5ta4rwrz8/xKGxszlrACvkaXQM6uCvxk6zsV5KMQWPoDaPQfSIPKZrbILsNVe
 XQmBjWqgKLi6Kxts9/VRSuvS1tvwRgmRjZm72dcYC+OpRv1oWMBKJlbuuNXXbjX6
 Vs7f84QKlZsNSJROi/H2ZVyWuGrVXxyU5HOnwsxVqokulLke+YzORG5OdXmtK6n1
 w3bNg53/oLveZhFtVqvHRLIsagtihjXNgBBj6uvWet8I6KE2evXmmUkJuCGxAxKe
 bz35FXs96TvHXaEtf4XI5E5iq0P8uD+r+GgbrlJ0xq616p4/rjQPaDCBs8tjNEEB
 MJGMWZlgB0pvUbkIx8GQg==
X-ME-Sender: <xms:i0ftZ5KaG2uufPJVKBfTobWJIKlCKbWDgdX05z1VF3py-_P77of4Gw>
 <xme:i0ftZ1IYLsoC9yIEDaiAHdfDG5XcGqYWhc4HBxkZySYq9g6OQ-bGwmpUD7-gZx290
 2scjkgjv3pGgXQY2rA>
X-ME-Received: <xmr:i0ftZxtfcv5Be7XX6NekDgEtSgnLPsED7bWptDgLcjA9QUPXSgyGky-EEIXtVjXTkHkgMktBdnFqZL5FnNNpYCJkx5ZrISPbdGw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddukeehkeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhf
 fvvefukfggtggusehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeetfeeiteefveegvdfggeffheetleejkeekleeugeffffdtgfdtteetkeev
 vddvgfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtohepthhorhhvrghlughssehlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdp
 rhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
 dprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgt
 vghfohhrghgvrdhnvghtpdhrtghpthhtohepmhgrshgrhhhirhhohieskhgvrhhnvghlrd
 horhhgpdhrtghpthhtoheplhhurhhifigvnheskhihlhhinhhoshdrtghnpdhrtghpthht
 oheprhgrfhgrvghlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopeihuhdrtgdrtghhvg
 hnsehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:i0ftZ6Ys7HOmZYX6i7CjkGeWCXyXroSjKpNcOj68r6-TgO2BwxscGQ>
 <xmx:i0ftZwbr9-RaRES0dEYIYaAw8djzY66UYk6h_yTX916ZRnjmgr1oZg>
 <xmx:i0ftZ-ARJZmWGfOkkM1ojwGssxA4VlY6ebenJ5vzVWtmRlgHHbH8Nw>
 <xmx:i0ftZ-Zt9a-go7CL_4XjzLh6I04otjTC5w6-SLVSfMQvEbQDSc27uw>
 <xmx:jEftZ5QIieS5oYEIetnhoOJSetjhlt2675OecW8fTY4o4RKOrLpoZSfz>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Apr 2025 10:19:53 -0400 (EDT)
Date: Wed, 2 Apr 2025 23:19:51 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.15 kernel
Message-ID: <20250402141951.GA79643@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 masahiroy@kernel.org, luriwen@kylinos.cn, rafael@kernel.org,
 yu.c.chen@intel.com
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 Please apply a single commit from FireWire subsystem
 to your tree. As a side note, we continue to have a discussion about kbuild
 script since the recent change seems to bring a regression when building
 some in-kernel tools including the one for firewire[1]. A fix can [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.158 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.158 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.158 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzzpB-0004za-Py
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
Cc: yu.c.chen@intel.com, rafael@kernel.org, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 luriwen@kylinos.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply a single commit from FireWire subsystem to your tree.

As a side note, we continue to have a discussion about kbuild script since
the recent change seems to bring a regression when building some
in-kernel tools including the one for firewire[1]. A fix candidate has
come[2], but it could be too late for the current merge window.

[1] https://lore.kernel.org/lkml/20250328074750.3524280-1-luriwen@kylinos.cn/
[2] https://lore.kernel.org/lkml/20250402075253.1772541-1-luriwen@kylinos.cn/


The following changes since commit 2014c95afecee3e76ca4a56956a936e23283f05b:

  Linux 6.14-rc1 (2025-02-02 15:39:26 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.15

for you to fetch changes up to ca2c736554c105897d67a015a97973af315e1c32:

  firewire: core: avoid -Wflex-array-member-not-at-end warning (2025-03-16 09:32:30 +0900)

----------------------------------------------------------------
firewire updates for v6.15

A single commit has done to use the common helper function for on-stack
trailing array to enqueue any isochronous packet by the requests from
userspace application.

----------------------------------------------------------------
Gustavo A. R. Silva (1):
      firewire: core: avoid -Wflex-array-member-not-at-end warning

 drivers/firewire/core-cdev.c | 42 +++++++++++++++++++-----------------------
 1 file changed, 19 insertions(+), 23 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
