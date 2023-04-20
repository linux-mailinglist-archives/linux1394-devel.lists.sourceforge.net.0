Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBE76E9904
	for <lists+linux1394-devel@lfdr.de>; Thu, 20 Apr 2023 18:03:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ppWkH-0003RH-AV;
	Thu, 20 Apr 2023 16:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ppWkE-0003R8-4s
 for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Apr 2023 16:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jajIfTVPuVBVbgFh+8afBmP6sXLejNyeNMNRhBwmtqk=; b=C6u8f8zfDF7Acb6F4Q3BArJd8m
 Mn05laSCX2dKHWiadq7BdS5QXHRDovquID+InR1On6wg1lEZiv4FOt6sVJxNTws3mCzT0iMEzt16H
 2aVwF4tiSFgMT/gI7t8VdvLsYPK6WLOm+wV3HOo+5yPGIZtSXQGtpaEe6W0Qty4b1mng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jajIfTVPuVBVbgFh+8afBmP6sXLejNyeNMNRhBwmtqk=; b=L51lDO0ZYxc5HaZwnL9lPrQTM4
 p4sTMYpemulC6U2nWHXZymracTyHVlsSryOdN1MPoHvNwBGnPjEjC9I9bBhKZ+/TwlG1Uq8s19Hoa
 npMiCzfPVBJrRUsxJdj885JOuTaFPEzK1j3e9Mda6SIh0nHVEe6xqrqjKkA/7EbL0xqY=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ppWkB-00DeyE-Cq for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Apr 2023 16:02:50 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id B13993200488;
 Thu, 20 Apr 2023 12:02:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 20 Apr 2023 12:02:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1682006559; x=
 1682092959; bh=jajIfTVPuVBVbgFh+8afBmP6sXLejNyeNMNRhBwmtqk=; b=W
 SMmpicUwyAy8N07aHEt3KdrT1ABiMYOm/Rioc4UehTS4dkQhL/LaOf3Ifg7Z47OQ
 gsK5ei6agy8VsUPn4TlcolULpgn0gjgA0Qq+0bFY+KrWhxjtTXP1xWEtGXeCf93U
 JMd8cdR0fRUBQireNZopYiMxLFD4GAC0zhUfmZ3xswoXE5Q3AdrWDNIG4ui2LTCG
 vjfIDmCu8xzE7CK/HO+lJMHHZMtPZ+nFilEmYefdVQ4gAj5IaN98bjCz58KQGQ12
 OxCdBBByM1VGWiMmftRcNk3chIEEppJHRX2+9nI51zma2R7CIR78U9Y11noUxGCm
 ln1c1bJJDCQRAsIQ0Kn8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1682006559; x=1682092959; bh=jajIfTVPuVBVb
 gFh+8afBmP6sXLejNyeNMNRhBwmtqk=; b=dEUG2WNyxVkuLtSWu41v+FeRDrOAW
 dWvFDoIyB0Ktz5NqY/JHA3QVG4Qym9wZI7Kxl81iyBhqbtQLKvRCK/RlG+TDYUOA
 4NreCNokE+q1f4wJs6kJ0jDMlfBzxeqDokPk0Pmz90PkyoBBBk0IKz6xGqX7bzMS
 kB4KgWIjDxuQS21xxDVv8w474eNoVP8RLNgqtbgXVU1ue+a39ExSB4fkw4t0ieCO
 B7lXw2gtt7kJV6kZpDsuBkbkSi/rMsgZ7Bx9CXpgrt65+/Jzkrde/D74ovHst8hv
 0eeZJBEHa3g2IAU2uFDaoMl8AQUUhBPEPh5FjjL6N4HswSn8pIocSHxNw==
X-ME-Sender: <xms:HmJBZKhol3TAlraWVNtOr8AwoDN1lgWIZSC-zAVFgPkN1vbzx91Qwg>
 <xme:HmJBZLCbVB_iBRscbPAez8OG2CWKZUN73fyu1y2c8g5dr1tkwLHSM1lCusZi_Wqgk
 VKmxtlaWbHX6gBegdk>
X-ME-Received: <xmr:HmJBZCHChnjtXh1pcm4QcW5lDGUjlXyCC5RSCuwOwBi4DD-VOtGh5FH4lU3J6oAssVgqndU9u9WLcUg_RZ322zZ1AU6s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedtvddgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:HmJBZDS6GT03yAC40V9EEONRJuJa49-KHDMrgoRde5Ci-eMrpjpmtA>
 <xmx:HmJBZHzEch2gkjs5dRfRC7WTU08JQithmMP2tZNVLiLklczhcB2b8w>
 <xmx:HmJBZB6tm9HYEbGtNH6d-hajNviRdfYaZOEEJ5ZbOksfkzDVNOXziw>
 <xmx:H2JBZJtnwBbC_xakI9pWhUCYxcvZIT5HvAbdsYJlmr3egtkSruR93g>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Apr 2023 12:02:36 -0400 (EDT)
Date: Fri, 21 Apr 2023 01:02:33 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 stefanr@s5r6.in-berlin.de
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230420160233.GB33275@workstation>
Mail-Followup-To: linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, stefanr@s5r6.in-berlin.de,
 tiwai@suse.de, broonie@kernel.org, rdunlap@infradead.org
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 06, 2023 at 12:58:14PM +0900, Takashi Sakamoto
 wrote: > In the last few years, I have reviewed patches for FireWire subsystem
 and > requested sound subsystem maintainer to sent them to mai [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ppWkB-00DeyE-Cq
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
Cc: tiwai@suse.de, broonie@kernel.org, rdunlap@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Mar 06, 2023 at 12:58:14PM +0900, Takashi Sakamoto wrote:
> In the last few years, I have reviewed patches for FireWire subsystem and
> requested sound subsystem maintainer to sent them to mainline, since
> FireWire subsystem maintainer has been long absent. This situation is not
> preferable since we have some user of sound hardware in IEEE 1394 bus.
> 
> I will stand for the maintainer, and work for FireWire core functions and
> 1394 OHCI driver, as well as sound drivers. This commit replaces the
> corresponding entry.
> 
> As you know, IEEE 1394 is enough legacy. I would like to schedule the end
> of my work in the subsystem. My effort will last next 6 years. In 2026, I
> will start strong announcement for users to migrate their work load from
> IEEE 1394 bus (e.g. by purchasing alternative devices in USB and hardening
> system for them), then in 2029 let me resign the maintainer and close
> Linux 1394 project.
> 
> My current work focuses on real time data (sampling data) transmission
> protocol in packet-oriented communication, thus I would provide less help
> to implementations for the other type of protocol; i.e. IPv4/IPv6 over
> IEEE 1394 bus (firewire-net), SCSI transport protocol over IEEE 1394 bus
> (firewire-sbp2) and iSCSI target (sbp-target).
> 
> If receiving few objections from developers, I will start my work to send
> fixes for v6.3 prepatch, and PR for future v6.4 or later. I'm pleased if
> getting any help until the end.
> 
> Reference: commit b32744751e75 ("firewire: add to MAINTAINERS")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  MAINTAINERS | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

The patch is applied to for-next branch for v6.4 kernel:

* https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
