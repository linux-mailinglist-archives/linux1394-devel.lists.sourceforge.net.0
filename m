Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E75723365
	for <lists+linux1394-devel@lfdr.de>; Tue,  6 Jun 2023 00:56:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q6J7W-0006dj-Ch;
	Mon, 05 Jun 2023 22:56:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q6J7U-0006da-QM
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eog24KCYFUe8sVMLxRnUuAe7b2ZA8l4HhKqKfnpqwXA=; b=RsisKUTXKw4UB5acRyoQBvd3GE
 e9BJRkF6QMTqtjP3Zjbv6HdTFtFoODUv4lhuD5kCRRnc1Xjds+E7zuMYSUhGec2wUTKiN1LYDonVm
 d2V14E1YwrTvZukbpry5EekL2bnqoCTjJicjSJtPgbT+IkNaD8aWFSULFZnIQ3mB8dPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eog24KCYFUe8sVMLxRnUuAe7b2ZA8l4HhKqKfnpqwXA=; b=KyloWyZZbfh5I1sQ78F5BA4pt3
 5j3+Zlpmzy7iKHovVdPERnT9rI3/paQ98keQk1xDAuTf5RPyYJ1sQZUZDAGblk3u8YpOIrAfuSE8B
 FBx8ZLVB35oRXIQrgwczJTf7xv5P5p8iiQ5GAJ5sGEYs4mRC0e87zedtnxFbSzAATiRE=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6J7N-0007t5-QI for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:56:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DD3505C06CF;
 Mon,  5 Jun 2023 18:55:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 05 Jun 2023 18:55:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1686005756; x=
 1686092156; bh=Eog24KCYFUe8sVMLxRnUuAe7b2ZA8l4HhKqKfnpqwXA=; b=C
 JcJv82/nBkX0uo1d3G3dntMBzNaBBHiPjfQ1qYTRWCWP8ok3MofFVT/E5XyZLQU8
 9yofmxe0TZETUfrqZteFyjKUZ083WPuHrXsFU3IT5TLe3kiasVIO2geDXiYsXmY3
 sQlcUGgyQ/cVghqUkQ1RVnql+2lckrKEqJgt6dmV32fuuLq2aTgbsPIVTcrGXYQo
 BRZ361HIkmrNlolOWrO63QVSf3PmCJdWz3y5p1xlHBoCs3okY9rG5GKCfDtbB5/1
 gDzzGPzKVQpVj+rA0PNICUoAolWfmIxdTsDfpZRiTwvFuyUIzvIHr6E1jRtW4Jfg
 K+UWyK27SRYU8j5GDGEaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1686005756; x=1686092156; bh=Eog24KCYFUe8s
 VMLxRnUuAe7b2ZA8l4HhKqKfnpqwXA=; b=GFuaraqOvshZWzg2JfQJVXpibUZZd
 ktdZ0dglazBKPe5IpR/FN4iocmZ6oTolMa79T6GhKlTCdDsRI7BIibl6YQg46zN0
 kYi4O54OgQmPaaStSRQeM/kzdUnFvQfHuW3OEh2fT2oMOZ98BKmTq7jySkENFTM2
 GA7iQ2mQQ0vP8leu6LjDLDuJ6w/5WienYU8PRTcfdH9qAHO/sLuit9jiJbxwYELu
 oKO046KWUD89kxLUgTJJ5rGdj9XBunVjsOdji/ftZB0nZEWyKsbBjDqGIj4kXcbH
 4uoCOouA5y1XMfueEICL4FOpmpdijZZZmMY+ho9z12uDZpJAIrrlti1FQ==
X-ME-Sender: <xms:_Gd-ZNEXuI5Aiy2QQkmdmqdHKS5OXTS0AqssEpjI3SfA4MOuhAzoyw>
 <xme:_Gd-ZCUGaqSn3u7IHc_mv4U4VoG7rR-WVcLYKBTxLw9QfEa217so-BbzMj8d1rwWS
 fucUaTbRpRbYMzv3PE>
X-ME-Received: <xmr:_Gd-ZPIzJvrry9OvNqPMWwUKtRw6z4p4xAvJJzwxgn_cAlZBKA8tSHtU_O_CpbrAFxY5CMKMWI7W6qTF4YN50OzdlUpSUY1l>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgedttddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:_Gd-ZDH26th2SgxybJaaGtsEXqHWRXz8XVP75Ed5mToL_JKie9Ulxg>
 <xmx:_Gd-ZDWdqiS8DgFpvyvJ-Slmeu_WrujGUSTkXWPMSAPfRB9ssqUY0Q>
 <xmx:_Gd-ZOMppUnB4QxMRZ-LdBEv20C43Wjkvh7I0ULNX1CwKC0yzyzuig>
 <xmx:_Gd-ZKc2ngQ10B9c9Bet4VRiHm8-_TNsP0FSHXstPrvVsv3IwkAXaA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Jun 2023 18:55:55 -0400 (EDT)
Date: Tue, 6 Jun 2023 07:55:52 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] firewire: fix warnings to generate UAPI documentation
Message-ID: <20230605225552.GA178739@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
References: <20230601144937.121179-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230601144937.121179-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 01, 2023 at 11:49:37PM +0900, Takashi Sakamoto
 wrote: > Any target to generate UAPI documentation reports warnings to missing
 > annotation for padding member in structures added recently. [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q6J7N-0007t5-QI
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Jun 01, 2023 at 11:49:37PM +0900, Takashi Sakamoto wrote:
> Any target to generate UAPI documentation reports warnings to missing
> annotation for padding member in structures added recently.
> 
> This commit suppresses the warnings.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/lkml/20230531135306.43613a59@canb.auug.org.au/
> Fixes: 7c22d4a92bb2 ("firewire: cdev: add new event to notify request subaction with time stamp")
> Fixes: fc2b52cf2e0e ("firewire: cdev: add new event to notify response subaction with time stamp")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  include/uapi/linux/firewire-cdev.h | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
