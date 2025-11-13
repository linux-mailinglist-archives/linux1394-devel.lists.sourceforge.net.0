Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1624CC59FA0
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Nov 2025 21:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f6Ug5tHhYMeV99XvTLkbk48Zdy9v7Nuh7UdyK9JpX5A=; b=AoOR5xChMuXvlzKf6GWNJDONaG
	SjtJEmDFWiMmXrpD9YzGDW365kLgkVWHEIU/j5XtExVt9hblIoMJegG9VLKkBGyKGd2dmbnxHOK/w
	W8PtsDnsu6NzWkVOvNr1wkhTLcfYJLOugECTElBao+yIPe2BEHBKT1iVBX2VbCvGka6w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vJe0W-0000yZ-L7;
	Thu, 13 Nov 2025 20:33:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vJe0V-0000yR-8U
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Nov 2025 20:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4iEHkKhk3U2FIUKVqiaCbB7GA5IU2vkfZs/NSD1kjyk=; b=HhE1O6aDFd51c40cS0s/osAhLS
 6k+W9AeFhX5vfVLQvg3VNxRfpvBD2LXnSeT7jDeVn3S48Zu7GFh+N7gqBqaXC73itiIz2KaTf0dLk
 46nYMK958Y1Z+5m3P4UIVIJeYPSnzrewXhLk20EHNHxotBgMq9nSW+XaeBioUsIef8EM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4iEHkKhk3U2FIUKVqiaCbB7GA5IU2vkfZs/NSD1kjyk=; b=gGasXbezYQJ8XX8425dGa4GFdt
 olBXeSegORHDzAqlz5rXETkJwrPAW8okBi2umXTsZe47PFdDXuAjHNAgGl6nEkPsxGkoXAXU0MMux
 g1Nf7SCaOSfGd2XXsGAWRLKfAv2GthQs5qlumyzS3KmJHLYxceVQK7JxNkRee4ebg0IM=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJe0U-00037X-3Q for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Nov 2025 20:33:27 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 688FC14000CB;
 Thu, 13 Nov 2025 15:33:15 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Thu, 13 Nov 2025 15:33:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1763065995; x=
 1763152395; bh=4iEHkKhk3U2FIUKVqiaCbB7GA5IU2vkfZs/NSD1kjyk=; b=y
 JLMkwTTZYVBn9KQ4TpqzwBdqw4DRBuwgHc/7YcvZlObveFKF1NwigNSZv6BT76PF
 7hCbk8c01rLw3JcVVp001t04D4idjTuNCNQRiWT7dmzOckpxn0Y0PrerfanZ9+/k
 mtF0VxVzPz10nKDfTCnjObf/0TH0crD/o1+DscBqNNS1ZC/0L5JDoNOT/Iz4ZmNN
 WLTwqH4rU14l+8R4Ll9mpOPigFZalOnQFeJt1fYFIYMEyqCnGc/aCIuNW9PB5E2J
 KZ22sRbA2SugjE2+0GeXRTP7BbyTvdstddnaclGYET+o+KrhUtWcz4bY3T4YqTx8
 Qxs/qCUjDzihFzWv/3llg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1763065995; x=1763152395; bh=4iEHkKhk3U2FIUKVqiaCbB7GA5IU2vkfZs/
 NSD1kjyk=; b=e3xMdiPIgmfBlKS82b9IHGTPDKclNnZppF8ESoL3Q+Hx0RP8LAB
 bZ/hz+aGtks+hY4uNedmTRr6AKLHDijSvvEyhjtGi8YOlcB0liZZDTEd0Ff1Rcsq
 Ji8zITBpPO7WIolsPihedyzOz9TlFCQqNDfsnl5Mq6A4oQsiGfjIb1hOAwyLOYrZ
 JzCkDlBKTbx7quK0tCdSClQs0BLgwtsUvIoDHmuQiYTC0fhr3F/OqFJIjsDViJVU
 rhxTMT2MHIytz0VJIYPtl8o1wR6LEAUtsNE80jnVc7b6Egrpb/JI5JdxURv+6AiP
 k5IcCt9btjH6wjOFQSEJWvR59v+SLJ9u08Q==
X-ME-Sender: <xms:i0AWabznAuyDTSicla51kbJpFZwXTaq0xlsVjYAmTcKYZKE3gTR25g>
 <xme:i0AWaRPcmerFiBOeWpzEv3d8sYKUEK4CTOCPIgpGgBYv6-Z8ecZ9e4cE65lAHU3ov
 UlgLcUgokrBgK-HvZQAnHfB4SMHZf6e9T4_27x_HdLUnpxxyOLkEwQ>
X-ME-Received: <xmr:i0AWac5DhmSD9jpGClrnqhpxcP5Y9pbfoIKImFgqbT63LBj7AlfyGmoFg0BnfeSYwMLcDH6bap1OEbiXLZOgrvgNfNRlEy3OHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtdejleduucetufdoteggodetrf
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
X-ME-Proxy: <xmx:i0AWaSPelTE7ugOFY5n3WBR8RXjtCuT5B_0JToXB1E5gzNtE15gkSA>
 <xmx:i0AWaam5O8BWkeMJp2UGoh2UvnFjcHHkXw4VU1hnwfHCh0M-2ggmnQ>
 <xmx:i0AWaZTa2elf6DBKe-poW0TlugW7bB_D9ZaxbzUqeY0GsYXxqO-CpQ>
 <xmx:i0AWaWAREVk3BBgOTC4OpH8cg_EvkczWUEiXJTjb9sflKzQ3sZlHOg>
 <xmx:i0AWaTljUJmmiHpqFH83ZNWm0HFGvoed_5saR4qlrI1fxXBHrGKnSauX>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Nov 2025 15:33:14 -0500 (EST)
Date: Fri, 14 Nov 2025 05:33:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: abort pending transactions at card removal
Message-ID: <20251113203311.GA383705@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251111223834.311287-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111223834.311287-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 12, 2025 at 07:38:34AM +0900, Takashi Sakamoto
 wrote: > IEEE 1394 defines the split, concatenated, and unified transaction.
 > To support the split transaction, core function uses linked li [...] 
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
X-Headers-End: 1vJe0U-00037X-3Q
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

On Wed, Nov 12, 2025 at 07:38:34AM +0900, Takashi Sakamoto wrote:
> IEEE 1394 defines the split, concatenated, and unified transaction.
> To support the split transaction, core function uses linked list to
> maintain the transactions waiting for acknowledge packet. After clearing
> sources of hardware interrupts, the acknowledge packet is no longer
> handled, therefore it is required to abort the pending transactions.
> 
> This commit executes callback with RCODE_CANCELLED for the pending
> transactions at card removal.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c        |  1 +
>  drivers/firewire/core-transaction.c | 28 ++++++++++++++++++++++++++++
>  drivers/firewire/core.h             |  2 ++
>  drivers/firewire/ohci.c             |  5 -----
>  4 files changed, 31 insertions(+), 5 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
