Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5578B65F9
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 01:00:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1ZyO-0002j5-CB;
	Mon, 29 Apr 2024 22:59:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1ZyM-0002iw-4p
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 22:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ow7pbetPiD769eRr/jvSgAEgZbwWNOQZgRPag4f9+U0=; b=doGw8NcaAh6wQWJI8mHTQAXP1I
 vLxevyePfg80yxBzdkk3u88bK1NNH2noHtaKNipaLYt4zTgWCKtWn2yjVE+L2bPwivAKVPyxHBTUl
 axy9kpOhC9eEEkIseu+N4ZnbuBmhHkX5Z1XI9+TtCeHZyxcx1YZLLKj/y/RyMDktZ0EM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ow7pbetPiD769eRr/jvSgAEgZbwWNOQZgRPag4f9+U0=; b=i4Th0ZFCZ+V+NwFTcB2ueS+kq4
 UD/xlAciOkA4i6TT/GLhEXqub9SNykNKsKE7V+s59zVCH3a00b96724uW1bdBBGRwIs+XN6YRNNUv
 q/s5Xqk9sJ+qr75vgLodzk9EZOeQ/YJyhnGWQIWm12zSVV7V/TRz/ijM4ORNHlgYe9p8=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1ZyL-0003bH-0t for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 22:59:46 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id D035D138037F;
 Mon, 29 Apr 2024 18:59:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 29 Apr 2024 18:59:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714431574; x=
 1714517974; bh=ow7pbetPiD769eRr/jvSgAEgZbwWNOQZgRPag4f9+U0=; b=F
 ypz/9JsjCxZUPjCMEw7UanvhgGP5OEoyCsIiZfdBy1w+XA4f0KsUQ1wI95Z86nOo
 pGLyt4yov/BeMJ/4E9kDY4QWYtQWkF+cnSDClKnUIQzC8HtL3yrEoGZqQE/nbeSk
 TLx1l266ZTaL9SYeBwVxLUjVal7kiXZSbrvvIceRU0EgHWVxr/tfOywrsNyEtqS5
 IYXQnIjdeB/l/6enJ/d4qq7kJyR6JTtnft/6vCjPf6zMQOjJmSvFnx4woafvs5/G
 0st1MNG4rRKXbu8Omp5fDqXSHj2ZHQ7piTXKXllyBtdF48Bml5ZeChjXEJ6farvF
 ikB+UFaKOFVDEUlAZ7eKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714431574; x=1714517974; bh=ow7pbetPiD769eRr/jvSgAEgZbwW
 NOQZgRPag4f9+U0=; b=gKpafJvezhc91yZCFmMuiQ5Rg4xchKN+mT6dlsIdMISM
 rZa7+Pd/kKKpdioreIDEMye7k5Z/4/evfmpaXBFz1/1/6GwN5FHXiOAlD0qAzgJH
 Tp2lEu2nvgG5YNKrs/qFP4WEcE0sPmvd9JIarBMSkAl6tMioZRATdjC2lfVvjOz0
 jLAAM33OejnQpVQK6zd/+BA9WpDPZBdXF5kP9YGbrmNzUpt9DY/WksO/yHVEVMu5
 59eWeCGPVmKfkvWbvCUcWMGPNULzWAch/2mDK79pfXv3EkVe6mzS8p/oFgT10t92
 iKK6WrI2FVyyDe6tT9vhwY0Pp/ymzKHi4gfCIL2AgQ==
X-ME-Sender: <xms:ViYwZv7DBGA6D9sPleS-NSTCVRTpGitaGoyyJt1Efmub9JvJb7LZWw>
 <xme:ViYwZk7DO2TujUlowfA9LLMd7scUNQLrnkFgSo4NOZDhywnSr7FIlSfrFS5Y5WeII
 xsO2RZgP96RCTgBjXU>
X-ME-Received: <xmr:ViYwZmeUMga2dm_lTdeXYZmqPOfRay0fKTaX0SjoFADnYTH4YgaeEFFs6lT8VOGGoi1pvxL5dSGZea2-oWZwDONQF2XDYXCao3c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduvddgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ViYwZgImtXr2hLn2Nyzbc0NuCIdyh13HLulYsDjvRpvBQe-EGdsLyA>
 <xmx:ViYwZjK_YgHnt3j2FKNNaBBpUtxnUEaw7oX8fTt5ch5aLmUcxafyXw>
 <xmx:ViYwZpzw0G0fSuEyskLbaGo36E9U5BiSogFIUYjIn8SQPUTOU3kTog>
 <xmx:ViYwZvIrkASSTIdigZsRqFWzaVD4zfkVit5mCnVmSx66YZUCtfdEiw>
 <xmx:ViYwZqXAf--Rg8PhT9QNE-6QuFVjIDonrEz0PUHKYwgGHw0boXGe-mAF>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 18:59:33 -0400 (EDT)
Date: Tue, 30 Apr 2024 07:59:31 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: fulfill timestamp for some local
 asynchronous transaction
Message-ID: <20240429225931.GA714896@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net, stable@vger.kernel.org
References: <20240429084709.707473-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240429084709.707473-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 29, 2024 at 05:47:08PM +0900, Takashi Sakamoto
 wrote: > 1394 OHCI driver generates packet data for the response subaction
 to the > request subaction to some local registers. In the case, t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1ZyL-0003bH-0t
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Apr 29, 2024 at 05:47:08PM +0900, Takashi Sakamoto wrote:
> 1394 OHCI driver generates packet data for the response subaction to the
> request subaction to some local registers. In the case, the driver should
> assign timestamp to them by itself.
> 
> This commit fulfills the timestamp for the subaction.
> 
> Cc: stable@vger.kernel.org
> Fixes: dcadfd7f7c74 ("firewire: core: use union for callback of transaction completion")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied to for-linus branch. I'll send it to mainline as the fix for
v6.9-rc7 kernel.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
