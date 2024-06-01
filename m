Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C08298D72D0
	for <lists+linux1394-devel@lfdr.de>; Sun,  2 Jun 2024 01:44:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sDYON-0002nL-GD;
	Sat, 01 Jun 2024 23:44:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sDYOL-0002nD-KT
 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Jun 2024 23:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v2e2eni5tWu94yQdh4Ilz6sySnlVOXpS2VomxvN/EeI=; b=Xop902BXXJKqzgjJOTQwahAfLi
 1OEQ2AQ/0DuLUNCgcFUifpQY6HXtCD3WQL7s/wN/tv77TYev8EY0Of/4TFTnB0JnyK20B4FnKT5ca
 YZp/u3g5pnFUUJ7vIf9XqNH9Rc8Lf2awzETG1DV8IZNl++7i1ghFASR1DaKvjB+01Bts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v2e2eni5tWu94yQdh4Ilz6sySnlVOXpS2VomxvN/EeI=; b=J
 AwYt+yNm2jPHEwNOO3u6SPPYJ4Z4UCavkH88j4xYWoxILzjlyT5kXOK3WyNLSBR2llYIy9u1d6Nkv
 J5dxnf8bBGXg0R+9j3i8HfiqZPm1BqoW7XswFOHi+8cEwXiLWjd+Uj0+hfXq2/McVThzKvc0So6Bb
 d0TDHTs7YChFFSGk=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDYOK-00058H-J9 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Jun 2024 23:44:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2D6B611400E5;
 Sat,  1 Jun 2024 19:43:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sat, 01 Jun 2024 19:43:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1717285433; x=1717371833; bh=v2e2eni5tWu94yQdh4Ilz
 6sySnlVOXpS2VomxvN/EeI=; b=MB0F1Uk0WqKbNj/QXGmcs+zEOK/+JBJiNyjh3
 yNakPLHUn8BJDBSPJIP/UF7fwfPEeuy38aG/rg1/Sh9B9isw1aKkyj927TArjix5
 FOF7YDoTNUtM+xRY4E6fAFo6dTE0XAY8TPvyS8If5yuNZiIkk+SzQkCLTylJ1IfG
 iyfCYUJimYkkrsL4cTiZNYm2mRxaL6XjZ69AoltWds05gFfawZYG/bYHt7bN7LfS
 q1VqlhJFitdfkAX3bCmhGwtaKzxzOesBlFUS+geF5kwVkojUv3mJffNNWMWLxwkU
 uoF81ayoEpOOT9TFrSP9Hbp2vFkNSlLBcMxnS33PwnEX3Ketg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1717285433; x=1717371833; bh=v2e2eni5tWu94yQdh4Ilz6sySnlVOXpS2Vo
 mxvN/EeI=; b=qVa8p/0UwnPtAU4f514YvvBXu1Xiy1+J0oEuZUmt/cMOhLSxDwm
 j0DACbNd2S429JiIZWoUKaTh3E5kT1hayqvMYNlX4s4e/Ql31YJ9Hz9GQ/nH5tgc
 ee3Uvl2x5Sg2XcFJIe3hpwn0FdbhkCIRbeyki8eEACiOdVxkdHfJSd31LpOxefKk
 HrGjjD25VUnUoguzfjQFLZJgGHoKyGaNJNj15wNsnfc37+uQji13+z3X9/b8cvh7
 W+NzKiCiq+4qGtMCSWUXynHAeLeV0D6i1KY+CkUS/kNqB0aNewqvb2n0xekd/pFu
 kRyGsmIQ6KTPZ53mBaey3o2VMALcP6Z2Srg==
X-ME-Sender: <xms:OLJbZuoIIHBAQox4ItQIJXlofM3SCM0lJnfzQM_bdWsdQZBk9H75CQ>
 <xme:OLJbZsojVPH5DJvPmkV3VwlYM5tIObkTC1ZhzhUVzWETakRw0ranGBd9dczwCIH9j
 cjw_s_csvCwqFvDJIs>
X-ME-Received: <xmr:OLJbZjMRk3oIWd6YoYvlsXPcAVs-qUbVJYxJGdoM4mbXIPRe9g5Z6jmc6jylo9s0_x7tjqVIQlR-h7vn0BZOWQ1l-4Y7OvSF2Hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekledgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefve
 egvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:OLJbZt6Q-augbRQ3Ga-cVlHi8WjirZayl1tbLPyPyiYz7IQQLUCA5g>
 <xmx:OLJbZt7mVb6gLR1onru4voRi_c3NGOk8ZVWjSC4uwW8Ij9YGgu6GHQ>
 <xmx:OLJbZthcjREv2xzBq1LBNPan8feQiHmQulViYWBjpZ6YCoEafgW-fQ>
 <xmx:OLJbZn4pWNRxeCymAb3syX11rPvdtdzNqqoGm4kJZd0inUsoktalsA>
 <xmx:ObJbZnmFw4gS19Tl8vn-1xQH3PeXTxPdc9aOKU4yItRjIQlqmVgf77px>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Jun 2024 19:43:51 -0400 (EDT)
Date: Sun, 2 Jun 2024 08:43:50 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.10-rc1
Message-ID: <20240601234350.GA424664@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply a single trivial patch from FireWire
 subsystem to your tree. The following changes since commit
 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.152 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sDYOK-00058H-J9
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply a single trivial patch from FireWire subsystem to your tree.

The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:

  Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.10-rc1

for you to fetch changes up to f94b77709e82242c1101e59a90a7807455c4ab2a:

  firewire: add missing MODULE_DESCRIPTION() to test modules (2024-05-27 07:34:58 +0900)

----------------------------------------------------------------
firewire fixes for 6.10-rc1

After merging a commit 1fffe7a34c89 ("script: modpost: emit a warning when
the description is missing"), MODULE_DESCRIPTOR seems to be mandatory for
kernel modules. In FireWire subsystem, the most of practical kernel modules
have the field, while KUnit test modules do not. A single patch is applied
to fix them.

----------------------------------------------------------------
Jeff Johnson (1):
      firewire: add missing MODULE_DESCRIPTION() to test modules

 drivers/firewire/packet-serdes-test.c | 1 +
 drivers/firewire/uapi-test.c          | 1 +
 2 files changed, 2 insertions(+)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
