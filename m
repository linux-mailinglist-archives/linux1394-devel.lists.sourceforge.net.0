Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49630C63D20
	for <lists+linux1394-devel@lfdr.de>; Mon, 17 Nov 2025 12:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fYJmEQp8KwPwSKN+YuPnOkq7ze+U1w/pUXV9/P2GmTY=; b=kzxyUOfQdvHs0lRCGjab8YoU7w
	u4lxCOEHM6S7980GPL4wS9m+WeD2Z2y1Eu9PLcCNBAqRdkUCcwo188WbVWa/B3HYONA2YGszHVYSy
	Ctjc1wN7PBh8DWA6q319YKenmuoG1Z8aUvwI0mHb4OSPPI7atK9moXhxAmJFalcLHfzM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vKxS5-0003pB-Ah;
	Mon, 17 Nov 2025 11:31:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vKxS2-0003p1-I6
 for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Nov 2025 11:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Od/LzLdNDLGB9BaWnjY2NsLBwJgTXzPdpv02meqtZL8=; b=BUjxR/n5Ooo/mluIcUreI6ngNY
 A52B27XULIuAAWnaeORolzMzYBceY8VDB7azaGosoGNli7uEFGEwKpPMafVvWS7OkCkkFRQvg3GLA
 6VDmNJv0APZaorF7/kZfyRaCAeWoC9jAJBRDlNnjfYlPjDz4pvjq24CqI65gviWy7spc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Od/LzLdNDLGB9BaWnjY2NsLBwJgTXzPdpv02meqtZL8=; b=Wt8C++HAQDtVt0cOmxNb8AixzO
 g3NgaXs+Ycj20yozNtwUD5hk3m6jN/bRw+raLyvlIfIXTMz0E5g2furcD/pJr3loT87YR94B+r31Z
 xFFxZjDIs5K2JZi+90+qQvgVwUSKYe+ITQoEqCkDDrL4bkBbaceTMAozehkvWFm+eLG4=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vKxS1-00007s-Mu for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Nov 2025 11:31:18 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 08F2214000D3;
 Mon, 17 Nov 2025 06:31:12 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Mon, 17 Nov 2025 06:31:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1763379072; x=
 1763465472; bh=Od/LzLdNDLGB9BaWnjY2NsLBwJgTXzPdpv02meqtZL8=; b=e
 NEWDzBpnsvJT+o5L9OSIk7t0Yy5mfR/78nWkjOS2KKA8ACtwf0Pfg1rX+PuUWTir
 w/XynM07ikaQgWHmUQQe7qOl3EnGboheRXD+kh9lssNb4K4cRy/jQdwooiKVjubz
 9kG9sxbp6SYXAUvBTz+G9+xdV984gRVxWsQ7t8XE6Na+7s//+Gyt+KkBODoCR3xN
 xyCHnYZkERD1T1JLVqG++TETFqGzjVUS6bCJMIIXtiE4UGS3MY5eX1c1whEZqnqo
 v2Nu8xvxqFY09Ac69AAzb5MB/zb0m0qe4XUGE/blEPplvzTvBW9TtrmcZ2OBw/j1
 baDZlVXGI/wm4qk+/ND/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1763379072; x=1763465472; bh=Od/LzLdNDLGB9BaWnjY2NsLBwJgTXzPdpv0
 2meqtZL8=; b=v2gdH2dZGiqIIDuCKd6o30bhBgJ3PaxKZBiFG6jOOAkblHN9b6h
 odKEhqrOBq9SrZgksH6jz7O6NnaNUZuj+WPLOdEIulRotIFJsx4LtnjDqTKqjqC2
 6JdwHsWARYULBXkpI2zx4Nb2tNGfa8KvICCtpMtk9D14VVIA51AJqCoQgjaoaqXE
 8h+GLq4H4LQJbYHYvJ+vmFczgzew2/PDrnhHwv/jtia90czs3xA0qZdGbKZNsRrB
 TO7eRMVNFlIy1WhXfpvOEsjZ8AJAQHSCsjuYzFxq7CjfXVOESaUI3BXTyreoRx4R
 du5oNoHgJxpkywVyEkIK/LaWl/VHUHo0pfw==
X-ME-Sender: <xms:fwcbaY5CVpLu38cVxyEmWKGM3GcMkB4VH_5R54KVYK6HMvchnmjhYQ>
 <xme:fwcbaU0JntyJkiS4rCRYrvqSy3ro2qjlHZpXZpcXQJv4MMrQdUYeqB03WxFnf78Nh
 bZNNSGEg-3_NN7qLFGRU9PyIA8IIbdJtyJuxL0gk67gyOaaUjcsN6bW>
X-ME-Received: <xmr:fwcbaWeaqVLHOWgO4qCEu_kVwmmvZRtosIQKU7BCHWFGXxp4RRgYM915krsdPV671WibykY0pnIjAGPwfeRH7ugUUhvuEUzerg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvudekfeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeeipdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehnihhrsghhrgihrdhlkhgusehgmhgrihhlrdgtohhmpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopehskhhhrghnsehlihhnuhigfhhouhhnuggrthhiohhn
 rdhorhhgpdhrtghpthhtohepuggrvhhiugdrhhhunhhtvghrrdhlihhnuhigsehgmhgrih
 hlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlqdhmvghnthgvvghssehl
 ihhsthhsrdhlihhnuhigfhhouhhnuggrthhiohhnrdhorhhg
X-ME-Proxy: <xmx:fwcbaSdMsTqGljbocT6Y14kGzu1rpwSXoAelZbH2C4ZQdEeKCXJ1Pg>
 <xmx:fwcbaZxSIDkC371Im2vnrj_R0X0_bIJiJI-vi3-W74Wll2sNGyMB9w>
 <xmx:fwcbaZ_CeluSrNp7ie51PKXhkeU0PS-G-XPMOaCrcnVFbnvFLN2riQ>
 <xmx:fwcbaRiMaNKn5ByvYSigv1uhtsq3GhwQnjcnZSzkqlav4ZOdZCsBAw>
 <xmx:gAcbacS5QX8FKfwJSKjqUVCefai2_gtKpBvOQWVbkUK9h7TtnZegb3B5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 17 Nov 2025 06:31:09 -0500 (EST)
Date: Mon, 17 Nov 2025 20:31:07 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Nirbhay Sharma <nirbhay.lkd@gmail.com>
Subject: Re: [PATCH] firewire: Replace ENOSYS with appropriate error codes
Message-ID: <20251117113107.GA663208@workstation.local>
Mail-Followup-To: Nirbhay Sharma <nirbhay.lkd@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, david.hunter.linux@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20251117110901.686828-1-nirbhay.lkd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251117110901.686828-1-nirbhay.lkd@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Nov 17, 2025 at 04:39:01PM +0530, Nirbhay Sharma
 wrote: > ENOSYS is reserved for "invalid syscall number" and should not be
 used > for other error conditions. Replace incorrect usages with mor [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vKxS1-00007s-Mu
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
Cc: david.hunter.linux@gmail.com, linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Nov 17, 2025 at 04:39:01PM +0530, Nirbhay Sharma wrote:
> ENOSYS is reserved for "invalid syscall number" and should not be used
> for other error conditions. Replace incorrect usages with more
> appropriate error codes:
 
Yes. The newly-written code should not use ENOSYS for cadual use, indeed.

> - In sbp2.c: Use -EOPNOTSUPP for unsupported operation (re-adding
>   logical units via SCSI stack).
> 
> - In ohci.c: Use -EINVAL for invalid ISO context types in switch
>   statements, and -EOPNOTSUPP for unsupported Pinnacle MovieBoard
>   hardware.
> 
> - In core-cdev.c: Use -EACCES for access policy violations when
>   operations are restricted to local nodes' device files.
>
> Signed-off-by: Nirbhay Sharma <nirbhay.lkd@gmail.com>
> ---
>  drivers/firewire/core-cdev.c | 6 +++---
>  drivers/firewire/ohci.c      | 8 ++++----
>  drivers/firewire/sbp2.c      | 2 +-
>  3 files changed, 8 insertions(+), 8 deletions(-)
 
There is a rest to discuss when changing existing code in respect to
this topic, since it brings loss of backward-compatibility to userspace
software. In this reason, I've left them as is.

If there are any strong and specific reasons to correct them, let us
change them. Do you have such reasons? For example, Linux kernel
developer have shared the consensus and decision to ostracize such codes?


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
