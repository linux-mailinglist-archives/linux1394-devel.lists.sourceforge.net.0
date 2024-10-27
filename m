Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF339B1C57
	for <lists+linux1394-devel@lfdr.de>; Sun, 27 Oct 2024 08:04:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1t4xJu-0008SK-KZ;
	Sun, 27 Oct 2024 07:04:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1t4xJq-0008S8-Gm
 for linux1394-devel@lists.sourceforge.net;
 Sun, 27 Oct 2024 07:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K9B3+On1seQtdoA5l3dwUONjZSYYv1Xr9X/2UyZuerE=; b=A+LLFc6e0nSqueAO2nHCglvzUX
 hMZJj7iu1/bMkrepfJ8gtkaA1qxBCsjJRACqAwl364RuiXfDhHnTZjfXWcKC30wG7NrptlebQJNtE
 l3ZMg2fRxkTCURAptQkq6TmqXezbu0vlOxuwGPQkwp0JNyMwqo9vah/Xx2iq50rQLrus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K9B3+On1seQtdoA5l3dwUONjZSYYv1Xr9X/2UyZuerE=; b=V
 aEp+GmOny8Urot0gUbHXOqf9KZon2Q0xeXtkpsMaGjxVOYb8vHuJYnekm8Cu2jo3IpKbPAXyjN0LZ
 uU3gOQfrn4830My5G9CJ9DOi0zMwvQpbdEVGKLCGGbQyt/69IyWWv5GH9kzEqLNEhpY+EIEw8um0O
 jaPecWhDl+gu+M6M=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4xJp-0001gZ-Gj for linux1394-devel@lists.sourceforge.net;
 Sun, 27 Oct 2024 07:04:10 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id C8838114013F;
 Sun, 27 Oct 2024 03:03:58 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 27 Oct 2024 03:03:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1730012638; x=1730099038; bh=K9B3+On1seQtdoA5l3dwU
 ONjZSYYv1Xr9X/2UyZuerE=; b=M4skfE0eWcWAT8YruVT65zaAzm5NAa38Etqi6
 z2kmgivDB+5CCtfw/iLI8euPHAVCMhl+m2g6osDIPqlKRwQFVS/CwCJQKp6A3Ntn
 t1DNN8lVXRWJJrBMJwllrAZUukT8QXggaYdvAWnsByJ5si/ca9TewDwZPDkWWNS+
 GOqRgQ/GPxLPB+ZnYrSwwXdfOmZiR2BcznVGZCm5LYpNH7eOALh5TykpnJWoQ5mk
 k4zRkK/3vQsneUkrGEHLDBffAF7zqKV5+mZT0UHI9FAgm8WSLguI+5+CtbQFuzNz
 6xhITSbNCQ1nxQB6FkX32B0qLszHiibnYM+JtEimnmOM6BdqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1730012638; x=1730099038; bh=K9B3+On1seQtdoA5l3dwUONjZSYYv1Xr9X/
 2UyZuerE=; b=FGJiSSumW4do0A1A98zd1Y20Oocr4PYr6Z0hTRdGW5aRzxYaVz/
 i0oPuC9tyTlqfQ/oeV1wE9791eqY2pdfr6nRQTkdQWbNJ7KGPEC/9gB7x0N4uPx+
 wb+mwqm8lDCA9ZIq5uNI063cOHpnrXBXD/jni5oVL7O2AzR5U5vloUNMvMARwPkc
 4Mne3GsnixQlFInunmdbhHSA2DCxrzL1s9T1a6dyeBsTaLGVZYoVyrb/jTNIwN1f
 8fFtNkQQ6uSArY3cZXwjfj73ukTrZamj3jFpDu5GVNZpmBGmiA8Q5aa1avfRH6j4
 h8FFSeReRTufsHw28xpw5rKdOpKnJGW7leA==
X-ME-Sender: <xms:3uUdZ-w5-3fYwV5If3QYeWGdwTdcDleHb18u1rK4_Pcpmv6lKsNnIQ>
 <xme:3uUdZ6TNhyFNueqS00N6BtACfKk_jxMb6u9mev8e7EsjMYijXEiWTNseIlbp4OtEZ
 RgtdPu1Ce7ld2czDsI>
X-ME-Received: <xmr:3uUdZwU_JAzAUn9MH62F-eTVxi6ivXLR5v3Z97P0EIX1wGDU4cGr7DpWPsHAeQ5cciyyleHQZ7NJHSQ0BQV5-QDRUqh5ezLHTLs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejhedguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
 evuffkgggtugesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepteefieetfeevgedvgfegffehteeljeekkeelueegfffftdfgtdetteekvedv
 vdfgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehtohhrvhgrlhgusheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhr
 tghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpd
 hrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggv
 fhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:3uUdZ0i_jG_PoPGyHhICJemo5PpO7yhlsE550nyA-jjxjtakQ8mCAw>
 <xmx:3uUdZwDma_Uh10sC1X19aFBsc9PMnowKtdBOpJDdzeIwi7dwwPfKhA>
 <xmx:3uUdZ1KKe_jOyY7rbfORhqoSnJ-_dHHbzpkWZfjDPiYAAFMuwjauow>
 <xmx:3uUdZ3AiFd37in125Y-KiVZmtGOh4fD-IF6b237s5jjGIAalICgqDg>
 <xmx:3uUdZzMoWJRVWbtVRqMCvKTVUbw2WXG-uka6rpCiXJN2wjUJsUeuSO7x>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Oct 2024 03:03:57 -0400 (EDT)
Date: Sun, 27 Oct 2024 16:03:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for 6.12-rc5
Message-ID: <20241027070355.GA146113@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please accept this PR from firewire subsystem to
 fix a regression. The following changes since commit
 42f7652d3eb527d03665b09edac47f85fb600924:
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1t4xJp-0001gZ-Gj
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

Please accept this PR from firewire subsystem to fix a regression.


The following changes since commit 42f7652d3eb527d03665b09edac47f85fb600924:

  Linux 6.12-rc4 (2024-10-20 15:19:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.12-rc5

for you to fetch changes up to f6a6780e0b9bbcf311a727afed06fee533a5e957:

  firewire: core: fix invalid port index for parent device (2024-10-27 11:14:35 +0900)

----------------------------------------------------------------
firewire fixes for 6.12-rc5

This update includes a single commit to resolve a regression existing in
v6.11 or later.

The change in 1394 OHCI driver in v6.11 kernel could cause general
protection faults when rediscovering nodes in IEEE 1394 bus while holding
a spin lock. Consequently, watchdog checks can report a hard lockup.

Currently, this issue is observed primarily during the system resume phase
when using an extra node with three ports or more is used. However, it
could potentially occur in the other cases as well.

----------------------------------------------------------------
Takashi Sakamoto (1):
      firewire: core: fix invalid port index for parent device

 drivers/firewire/core-topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
