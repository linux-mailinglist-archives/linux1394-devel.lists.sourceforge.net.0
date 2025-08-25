Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E9EB33364
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 Aug 2025 02:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iuQ9w9WBQRP8S9RoNPHeoxTSaKoDq4TfdE1VD5pSh2c=; b=l8qWbDF1KX6l5rZLYvia5P+s9K
	zthNMxLHxqaIbMx5/CKKbjPiXbVw2PvyjhImcZiQ3UQgeO7OVxbkw62AYXlpK9NrqunQzw32PucPb
	VR+ft0bdYjqNnaJL/gqPEOQeYCI8vzukyiefEI/rRDHq7TNgg2GF3niEqXJ335T6Pq5w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uqL4L-0002mF-1A;
	Mon, 25 Aug 2025 00:28:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uqL4J-0002m6-4X
 for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Aug 2025 00:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7assxD8rK9CczJ5BGjPadwI9gaAFx3RtST678EbjCo0=; b=WEe7nQ1UehhiWA7ZsAtB5oRSNb
 wOc/4qzWAlr09l+e5nwSEN6MV7AcL4J0Rg6WVs45cHyjTBEI2n2MfL5vsWBCZFrMem6K9ri/x2ALu
 C3e43uznQP/ityfKpKzfCwJ8cSuxSyE3USy16u7apTCEmqsWKJ+PkxdY2tTWeBqbWsYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7assxD8rK9CczJ5BGjPadwI9gaAFx3RtST678EbjCo0=; b=Y29wcUU9uco/TFS6Ye3zpIvTgM
 +J/OqKWxz0I7YA88oxG6ngJDsY/FrAjZ0JhUAj7ephNUIIqKL3dHVs7wp13VKcIapDTXTnSf0YOAj
 MQ0YmLjG2TQFO7356FGUWHxCACOt771K1bZjahwSrwxSq433rxXHTuhKBWeFh+uQUCa4=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uqL4H-0007Xq-CV for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Aug 2025 00:28:15 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id B47731D00045;
 Sun, 24 Aug 2025 20:28:07 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Sun, 24 Aug 2025 20:28:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1756081687; x=
 1756168087; bh=7assxD8rK9CczJ5BGjPadwI9gaAFx3RtST678EbjCo0=; b=n
 /fPLQRVTWHbw6qx+X/pUqQ1OKLtzmfGAugnv/2aHGa0QE6bGKzkmuQDvNy4ZQJEn
 XwnYLxKq+GBdE8TS1APt25O6CMQ1mw8XhugK4PuYEAM275+l7VCkwX6r7O75z2+5
 lJeWGWaiO/n+mkR0uxIlJBe5+55wRt6a19yIvntl2ilg9e/7dHqccixFy+7n5/Rg
 hsdcyJjPGO7TcwOyVj/Io2yeibQIAEaScBNUkBsaQjsueX7nK2NvRFTXrC4QJhsH
 n/IvzE1WvthWgsGKLm9jxJHPuLx/IQuU0hAGzUyibuakOXxUZfZu1q/gWNOmKrcc
 W2Kiy5PP8IE0KYF9VNaHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1756081687; x=1756168087; bh=7assxD8rK9CczJ5BGjPadwI9gaAFx3RtST6
 78EbjCo0=; b=G0JY6ni1d1D4Y1fkLFOvSq8r1ed4zyAU1kOv7hjvrriWz7/Ni7o
 kUJcX+MBb4vEovrnSHtM4MF4ga0HU3nsqOG6zWADuWZ3WyRLpSsNMtExLFJ/vtFF
 eo86PKlOFNA9SbC1ligiJ6Rqy2XwInU5HVYfiwWAhj3z5o3Gj5x2ocKSfrvz2yLk
 W8eB7VdXaEJLMPEbNUyZXcJ7uLuqtb8UyDrFJ9R6mT2/ZSi5jNyWdDY1yxrgxg3P
 hvGH7uYJvx0KYAsPW4iZkTl/LoAJiv439DT+VFL43nEu73/fEWTFqDqWlvs6HHd8
 pT+ZP/tq5zpgNp8/Y5hmBHifU/JRFxHo5Bg==
X-ME-Sender: <xms:F66raBX-Lvl1LrfwkYusHIiJKYnkBijmNzb_LLOf0V5f3ghfjBFDRQ>
 <xme:F66raLO_OZ6ou_GfV_SpKXt9UJEcHMGJpK3NxQr_k1XlaqidCBidPPumy3nZRtx0A
 MvygTRf6zcJvW5bcfs>
X-ME-Received: <xmr:F66raNZop-V36G48-0dRFZd4Km9ot3zmBG7zwFZ2vvqk_00DaR7w8b1O3kX4lzTpAPPZJAWMuMRoaauhtDpIgtIvzk5-ZU9McxM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddujedtleehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:F66raHrvPZ72se5zwgihtCYOoumcnZI9is8n6XGTX5XH_4EFweeDFA>
 <xmx:F66raJYWyX4LaPHvbfvqsJHOPtoWnrmInEdK2sjAT9HxnN8HaRjB6w>
 <xmx:F66raHTdkvalkR8MAZBmOemXhEplHLNjUpTNxzujKEe_dO0LiFn9tQ>
 <xmx:F66raI4DALnKRSOuY_YQiidYpo1_J_M4ajCG53BMiueDT9hopveIkg>
 <xmx:F66raBDKRUu1cGIym56y35IF6LeMI8SFa9DaPHN2c_NB5MmKx2RsV_gl>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Aug 2025 20:28:06 -0400 (EDT)
Date: Mon, 25 Aug 2025 09:28:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/3] firewire: ohci: switch to threaded IRQ handler for
 SelfIDComplete event
Message-ID: <20250825002803.GA283774@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Aug 23, 2025 at 12:09:51PM +0900, Takashi Sakamoto
 wrote: > Hi, > > This patchset replaces the module-local workqueue with a
 threaded IRQ > handler for handling the SelfIDComplete event in the [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uqL4H-0007Xq-CV
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

On Sat, Aug 23, 2025 at 12:09:51PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This patchset replaces the module-local workqueue with a threaded IRQ
> handler for handling the SelfIDComplete event in the 1394 OHCI PCI driver.
> 
> The SelfIDComplete event is the first step in maintaining bus topology.
> It occurs after a bus reset or when the topology changes, and must be
> processed outside the hard IRQ context due to the latency involved in
> enumerating the SelfID sequence. Historically, this was handled by a
> module-local workqueue with the WQ_MEM_RECLAIM flag. A threaded IRQ
> handler offers a cleaner and more reliable solution, leveraging the
> kernel's common infrastructure and eliminating the need for maintaining
> a custom workqueue.
> 
> Takashi Sakamoto (3):
>   firewire: ohci: move self_id_complete tracepoint after validating
>     register
>   firewire: ohci: use threaded IRQ handler to handle SelfIDComplete
>     event
>   firewire: ohci: remove module-local workqueue
> 
>  drivers/firewire/ohci.c | 61 +++++++++++++++++------------------------
>  1 file changed, 25 insertions(+), 36 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
