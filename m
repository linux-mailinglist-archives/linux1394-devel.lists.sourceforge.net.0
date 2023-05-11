Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E8C6FE853
	for <lists+linux1394-devel@lfdr.de>; Thu, 11 May 2023 02:09:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pwtrU-00011e-EH;
	Thu, 11 May 2023 00:08:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pwtrS-00011W-TE
 for linux1394-devel@lists.sourceforge.net;
 Thu, 11 May 2023 00:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ECxtaniZ3VlG/FHLa8XkwazhoVMQeBUbJpGETX7ZGzE=; b=Qj7dtiyXDgcs2AVa/3S5HX4IO4
 emRvVrSCi+zadUi8y2V2QYFFzFhjofe4ucp8LegzlMjV5EcbW/FxbXVd/ZP8ysPJ5y5mspGaZJYmH
 5kQxr2IPNBd3F1d1sJewacoA9K5lUWd5gabBtV19AijE4EjCyb3NJOFc+ICBXb0GL0hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ECxtaniZ3VlG/FHLa8XkwazhoVMQeBUbJpGETX7ZGzE=; b=BeglcPiWPF8I2MIV15Kl4P2Dtq
 2mZncU2GnP0nBIlh6CHOS/L8EpYLQvJN/ST2B/h6idcq8mF769fUX224+EpUGmn0LomDiGKruFxtg
 oOTcARUoapv+jjmXn5lmbV0nhh+eUvCgQa3ZBvpWXu0fxZGHcaIvk7F8P9xGCVzk8SpE=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pwtrP-002jSY-RW for linux1394-devel@lists.sourceforge.net;
 Thu, 11 May 2023 00:08:47 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id CC5305C071D;
 Wed, 10 May 2023 20:08:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 10 May 2023 20:08:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1683763715; x=
 1683850115; bh=ECxtaniZ3VlG/FHLa8XkwazhoVMQeBUbJpGETX7ZGzE=; b=n
 1deAYbal4hf5VLxoP2VrSFr8Wgm01A2y9We7D5Fa+ayuD2Z8coFat1A7jG0ka9lO
 vKLujrobnuq7AohpdD+2Z9aDS+KdVkQUBCluP4hnnC2JucilISRiDhqSMpvw779v
 iVtpRuSnGCHF2kuM2GjTwRwMV0moXEQgG3pgCDEpDIldG90M9twc4GcfnNrk/kwa
 0hoRF0TbDhf9Nd/bBDY9FvffgYR6l9NsKPKSK41S9alf3IKryBy6JxRhN0mjRNGU
 7GpXC3fZBP5G8QvO9j9J+PI/8E3uC+ZGlzPw2vrI6sXFv+3sKS1A9qybFaONmOtm
 Q9WsPa2ugFrGp44IwSXlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1683763715; x=1683850115; bh=ECxtaniZ3VlG/
 FHLa8XkwazhoVMQeBUbJpGETX7ZGzE=; b=jygWQe4f1lWpnuBVJWlzAKHcPowY6
 zUays1eecmB3mbRDTS7bLgISdByLkWUEzdXsFIEhcp4Fl9VtJt1Xdkljs5M5C4s4
 2ZXNZV65ShEcHqyPLfZT9hyG0bE6wizfc9me37HCUOwPoXaNfkLkSpB6w9qbrNP4
 soSeInBSHyWcYxjWbrn7B63aL5kuIG/+Lsq6wzdI8e6FjsSqV6BAc0IHxLTxfx17
 VWKfOo7uuwEaY5k2f8CnG3TcTy6ZkrzMFLHErUFvq2TLvY2Ie55IR7ioyPrfhVmY
 9djIzIxRO6jGCgVnYd/k4AHtaQvT5HPFOKFQJS+NOswauaMG5mTrLgx7Q==
X-ME-Sender: <xms:AzJcZOZIzDbxhSTBGmrZ2RRXJqV8FswFRWG8ufDkrQsnlsPWD6gFyQ>
 <xme:AzJcZBbKd87kFCttzCFPmjoW71RziW3V8lDlM4kb0WPOcqV0n_B9T_m-b6W-3Qgc-
 W_dt6WDrUWlfsGfTzE>
X-ME-Received: <xmr:AzJcZI8nOeBA8QH_n48HaEFCh8TszMtjrhjdPZXPsnnFbHh2jR_KLyP3t-QtmeTT75VTalHXQBBMbMLmirRRzhQILQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeegjedgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:AzJcZAq-l5AZLgAlvbk4KbrIx4BdEsTgZnjgpOYjPrf6DO0wyi2Dyw>
 <xmx:AzJcZJqq1P4qT1fUPrL115fX7dt_urNHUjeQKLY-q3r2PC0pydKXAA>
 <xmx:AzJcZOSbseRILxeTRzBhEMavZPYyzjPpYWOmDP4ep_l_7drI69nXZw>
 <xmx:AzJcZKDAYKtVtlpE0FdH42ip_xzC7rWo1TVRUEDriA-M4rYMclvYow>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 10 May 2023 20:08:34 -0400 (EDT)
Date: Thu, 11 May 2023 09:08:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] firewire: net: fix unexpected release of object for
 asynchronous request packet
Message-ID: <20230511000830.GA796953@workstation>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Dan Carpenter <error27@gmail.com>
References: <20230510031205.782032-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031205.782032-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 10, 2023 at 12:12:05PM +0900, Takashi Sakamoto
 wrote: > The lifetime of object for asynchronous request packet is now
 maintained
 > by reference counting, while current implementation of fi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pwtrP-002jSY-RW
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
Cc: Dan Carpenter <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, May 10, 2023 at 12:12:05PM +0900, Takashi Sakamoto wrote:
> The lifetime of object for asynchronous request packet is now maintained
> by reference counting, while current implementation of firewire-net
> releases the passed object in the handler.
> 
> This commit fixes the bug.
> 
> Reported-by: Dan Carpenter <error27@gmail.com>
> Link: https://lore.kernel.org/lkml/Y%2Fymx6WZIAlrtjLc@workstation/
> Fixes: 13a55d6bb15f ("firewire: core: use kref structure to maintain lifetime of data for fw_request structure")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/net.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)

The patch is applied to for-linus branch and will be sent to mainline
within a few days.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
