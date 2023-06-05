Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 030B072336A
	for <lists+linux1394-devel@lfdr.de>; Tue,  6 Jun 2023 00:57:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q6J8U-00033F-52;
	Mon, 05 Jun 2023 22:57:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q6J8T-000337-0H
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j2rOiLTkAGr2XEigSY9BTteaFVuwIDk0LFOAYVeml4E=; b=Cef3oCHRPDf7yjU0iZIJQNQFWi
 yojhVWNi+jwiubGpqgyzP7uWh5/SFEbEKpzVNbd8zwOTkXcrKQ1RsSsaGgCnMxPwnjYdbNdK5/Z7i
 c3zfZduJ+iqqomOVZKndNK77+Tzl+IU7V/OVBDg+EoQ919hwnsfOsMXLaFGTzRH9wiz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j2rOiLTkAGr2XEigSY9BTteaFVuwIDk0LFOAYVeml4E=; b=eo5yFcuQ8Myl3Hn2aLSGZw5rHO
 97TgTDcVq82DhCadObWxVedvCE9vQjE0fxYBOCgQOWcZtQ2BOihYqq8+kdFNvqDL8nxFnkNPrqKBP
 2Lb2FwOjE/2ylqDQWuEfvdKTJGTkq3tRThYMx363qWyaM+dif5ql19PBxr/s86dHncIQ=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6J8M-00CESo-Fj for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:57:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 302335C06DD;
 Mon,  5 Jun 2023 18:56:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 05 Jun 2023 18:56:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1686005819; x=1686092219; bh=j2
 rOiLTkAGr2XEigSY9BTteaFVuwIDk0LFOAYVeml4E=; b=X/ZB7uUcooiHky0lza
 KVWH4o4S4qMyi6/qQyFdg+bNSvxNWA6b9dbhkQtqwPL54cnxKcQLNI4klpAsQZWS
 oJI9zeXunIweCn4sRZneRFjR/O/QLTuFZmELAp3oj/zPnUDRMqAf/u7UO3ErLHF1
 YfGHm5KzASTN6oQufEmo+drVQrGJWUg4MpZLg/1zZ0veKaQGZIG7lOQStWo7uo6c
 fvm4Pqfj2qw/GZnmBoomQ5DOQgoBRX+qKa9CUqKeMUgUqkW91BDyjark+oHsR47h
 pSsQnfWjLwWtzMscbQoHhucM5GU7y3lsjdYdz1ppgXVh4Z4vTL9s5w8N6++snqo7
 qgzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1686005819; x=1686092219; bh=j2rOiLTkAGr2X
 EigSY9BTteaFVuwIDk0LFOAYVeml4E=; b=KQ/jf5jEU7pnPjg7EEnRMxkEXiyTj
 bnnBLhH812RqaOjnrDovO6V3xkwt6TGGpMRd2frsfQEb2DF6/gPl5VfAsS/i8lu4
 KAMdmfCrdJBvo7/ZSuJeOKHDh/XPeXYakh3m0DkLGWSchyEn79iP4Lkt7xivjRwT
 fAS3XVdcjQ60WqT8q7/PRWErpiOBN8j/RpALhh+q5PcvT8gOa9vYQI69Mw7Y1UUW
 SALWT2rAypOu75SHo+i8Gt4WTYKPWHRWQrQVw1bS3ZZuslWXOo9jQtgHa5+ZTYNr
 oS+pa5aSfSXPgDNsWCzb2Rs/bUkGH7uPfxt8PdaWQhjKXAOpP1P3uC+GQ==
X-ME-Sender: <xms:O2h-ZGesdtYurqroN9jkec1KuOYpgUkWBS8O0LSfsTprIe5dRCmF9A>
 <xme:O2h-ZAMOVniAInQRugDRs3z1jsBk3FejJPnXmq5-pmf3w_l04wuOcIKfJUxFq98Ga
 kqclZvTqjSxb7kijGE>
X-ME-Received: <xmr:O2h-ZHgBXwkfAkdAin5FzIdaMF0ynLDuQQX1jl5NaZMHAMWAwzJf5jC1rQ3kgfrC9ThNUQZuGBnbc9A0b3PVsocg8tANz5no>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgedttddgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnheplefhueegvd
 ejgfejgfdukeefudetvddtuddtueeivedttdegteejkedvfeegfefhnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:O2h-ZD_cSAjmWlo02_hqanJYtya-2B7LCLym_myOfec1Wpr-zqg4wg>
 <xmx:O2h-ZCslPuUFB10_HnNg1BkymqLSpakHp6_FkMEC_y9ybiFtSYxckQ>
 <xmx:O2h-ZKERZX-grjMkM_ckEP7R9Ggs4nkSpn7D6_PJfpAbmf0wKVzk3g>
 <xmx:O2h-ZI3VzR0RQx2R08IqpPJ05Mk4V8iYkB-O0Xtas716JUV2Iy9HUg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Jun 2023 18:56:58 -0400 (EDT)
Date: Tue, 6 Jun 2023 07:56:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] firewire: core: obsolete usage of GFP_ATOMIC at building
 node tree
Message-ID: <20230605225655.GC178739@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20230604070255.172700-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230604070255.172700-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jun 04, 2023 at 04:02:55PM +0900, Takashi Sakamoto
 wrote: > The flag of GFP_ATOMIC is given to the call of kmalloc when building
 node > tree, but the call is not atomic context. The call of > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q6J8M-00CESo-Fj
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Jun 04, 2023 at 04:02:55PM +0900, Takashi Sakamoto wrote:
> The flag of GFP_ATOMIC is given to the call of kmalloc when building node
> tree, but the call is not atomic context. The call of
> fw_core_handle_bus_reset() and fw_core_remove_card() builds the tree,
> while they are done in specific workqueue or pci remove callback.
> 
> This commit obsolete the usage of GFP_ATOMIC.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-device.c   | 2 +-
>  drivers/firewire/core-topology.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
