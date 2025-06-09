Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B169AD2A40
	for <lists+linux1394-devel@lfdr.de>; Tue, 10 Jun 2025 01:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/SBT7U7k5wipD6pJqty6o2Jw4ehZmPbRExp0hQxtaZ0=; b=PlyzW5wOGeYpWOzjLM79Pbmgwo
	2gCV37mp/t3lZ8nO2qmcJ5IgwGM35XygJkyALyvlcE3Lie7+pJHoIiR3QdSs1+Ntapx6WHerOetwN
	pFP8ewfO0owSDiterWEPK45uN7hlncqxX8TWkRsqP5pIunz18d9L1O9wbTLiCVLCeMCo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOlXw-0006Ir-SM;
	Mon, 09 Jun 2025 23:04:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOlXv-0006Ij-95
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k0uJ+LCSai8jTgkwXDZp2XvJHcOSKF00RO3GVFcycTA=; b=SlpdwyiKqA/bNuJtgMiWpyWxXY
 9NkiYS+RhAk9UmxxGlq/dYpKpzcXkodUlYQaeoE2IaVgY+AZeFQgcbbS+nQ72iRhJg2kQf/x7ZAoq
 zzeJ5ayifEu+sJ/fvMV/eVypy7pzV5AP4GB2ILuoKb24X5vHJYQo3dg8ORAQxjqEOvfM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k0uJ+LCSai8jTgkwXDZp2XvJHcOSKF00RO3GVFcycTA=; b=bEk9FNDaMbW6ZieHP9RmqBzI1N
 PqNIrWoj2PVox4zU3oav/g5/iFq5byR2ax/c/825S/Kg3IWyTEhkrqH02s0GBaL5Ijhw0cqACsRPI
 X0y/yVHa9qb4Fcz6l5m9bab1TQWJMGDsffYeJf/979jcEuyyqWZ6MBi8U+u4xlkxlH9U=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOlXu-0002eu-GQ for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:04:51 +0000
Received: from phl-compute-11.internal (phl-compute-11.phl.internal
 [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id D1B781140344;
 Mon,  9 Jun 2025 19:04:39 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Mon, 09 Jun 2025 19:04:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749510279; x=
 1749596679; bh=k0uJ+LCSai8jTgkwXDZp2XvJHcOSKF00RO3GVFcycTA=; b=n
 5X+yCJ52eeJtMf/hCgnWlXaoI7n5kKwg70aGZEagDIfhiP15Cj4uCZkOVQK42Lcb
 h8YuzfM+ktKtpntaz65jqMzMk/130Te558EBoxIDT3nkSJEtrDWohJ4fU0VzKi4T
 IJRh78UoVvmHxAsjGPD8wHmuLvMg6tMNabIjprdourxZmBplxrUFYiySZTDIAto+
 iDdlXir+dY6c4cyVgD45ocwUeokavtOQZ3kge9ECeOT8jsZ6/DLc9Z2mdQnsRpY2
 X/VX634FxVrJcrG3XluA9KnqFaj8Dc6S7tx5D48RC1MEvYlFJi7IK+svCcnW6atP
 Ha5FLoQeifOXwzOYUDDUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749510279; x=1749596679; bh=k0uJ+LCSai8jTgkwXDZp2XvJHcOSKF00RO3
 GVFcycTA=; b=hO1X/2HfUOL+PLc/2VnGN0SKAqTbgO9BYlKm8tpdear8J3wvkqv
 AP8rcUKK1ze+VbHi+sYdmSrWCJsIUTmWN/tmv6zPzy+pLI2qC8GO98KUoTcY3xhX
 saCL9oIv9JhHuggAH8lJfMSb19Orf7SHhmDQFNnbJfhoHWCuYTwviNhmWqGVWC9O
 BP7qrkveTuIeIEioxSgrGAFZhvSe4G2pK4oukGXgU8zUGyQOS2Mxr+QpH/cHjbrr
 KvQ81keg2t3R4dhARF/ILbyLFAliOukbMZY383Rqp8ns0R+99ZJB74o5hDMTIGm9
 hqmgiSjg3AyVnIkfu7HHPjWiwjGpzrqSY1w==
X-ME-Sender: <xms:h2hHaFYkXBpfNyYob6XZ94yxJh_9DY5a5nLxK2uIF7Nrk2PB5xnM2Q>
 <xme:h2hHaMbYHl1YXyCbWflM0NdAaKwS1lEEbtWHw3JvxDnn11tTMdpJGAKkR9yJk2pkL
 YFOUzx3xXg9iwFViw0>
X-ME-Received: <xmr:h2hHaH-IzN7-tPU5u2uiKs73eea2RF_15yC_enDT7aLBfIRnHF7YLImKkh6_F0h7SWxucUb1MN8rqEbIICr7pbEKWSwWEpnoSUOU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdelleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:h2hHaDqkr9szpPxNztVJZN-9CdDodlr131oRbqQSO9G9d-RAcj35AA>
 <xmx:h2hHaArNEEWyf2v9kvVK0mQ2e_03Tl1c9zRCNJpVJnCj5m_xEp-c5A>
 <xmx:h2hHaJTlfLKzmvH5_jyDNWoRuXqn_S6_99WXKy2Acn3dJtvt6pC59g>
 <xmx:h2hHaIpJfqS6qNwNmPkIdPb2mj9CM7pWUh0dhT22iK4BEQ2hoyjj-A>
 <xmx:h2hHaOZqo1_LuTNQ_UrdAXbl6yNoTo5IRO128fUGw8kJ1Vvj1Zjzv3w3>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jun 2025 19:04:38 -0400 (EDT)
Date: Tue, 10 Jun 2025 08:04:35 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: correct code comments about bus_reset
 tasklet
Message-ID: <20250609230435.GA229165@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250608233808.202355-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250608233808.202355-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jun 09, 2025 at 08:38:06AM +0900,
 Takashi Sakamoto
 wrote: > The tasklet for bus reset event has been replaced with work item,
 while > some code comments still address to the tasklet. > > This [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOlXu-0002eu-GQ
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

Hi,

On Mon, Jun 09, 2025 at 08:38:06AM +0900, Takashi Sakamoto wrote:
> The tasklet for bus reset event has been replaced with work item, while
> some code comments still address to the tasklet.
> 
> This commit corrects them.
> 
> Fixes: 2d7a36e23300 ("firewire: ohci: Move code from the bus reset tasklet into a workqueue")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
