Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B0986A489
	for <lists+linux1394-devel@lfdr.de>; Wed, 28 Feb 2024 01:42:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rf81J-0006sS-4D;
	Wed, 28 Feb 2024 00:42:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rf81H-0006sB-Tv
 for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Feb 2024 00:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VUViz7u7gfm0YiAV3AIRkcwATKbvLRy2xU8f9D5/5yM=; b=Eh63iTOidyHlQ/Pc9iVr2nHAOf
 zDsT3IVxwKSe7QiDq5f+jod1kBWv3BYa4XNKSV281daW+Eddp+vT5t/mMz+17ffqnd5bGtVPhznCR
 Foa86Yqjp/Ah1ZDISLK6V76Y0Y8poc46XRQhSC/VXPg5IT53YIclsLQ4BpIxOpR259mM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VUViz7u7gfm0YiAV3AIRkcwATKbvLRy2xU8f9D5/5yM=; b=ebVRU8RMv9qWF++eaPlWXEXti0
 jvU0A1mmvndko4hA0LBFpmbh9tJjd4Icy17BqnLP7ze+jkIaFp0ec9AjYhVDwbHoF8COV7TPPUnQW
 NM6TSPlBrdQfpHqvWvVpPLZMO9/Pyv2Fuz3QQRbDsPjPMGaUm0EgDk4kVJLGcvQBOmOE=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rf81H-0005YH-H5 for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Feb 2024 00:42:00 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.nyi.internal (Postfix) with ESMTP id 93A025C00C1;
 Tue, 27 Feb 2024 19:41:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Tue, 27 Feb 2024 19:41:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709080908; x=
 1709167308; bh=VUViz7u7gfm0YiAV3AIRkcwATKbvLRy2xU8f9D5/5yM=; b=U
 6p2glzxmUEdUh4YrymU7mmmUVocvbGrPDDiZwE2n4Q3cexuN4C3exWi1Mh9MlPU7
 MRbsjI1NHPtMq3aqs2MCugBYWTcRI7S7MwUPrQLgNewKg2DkZ1znASInIOiJkLOS
 rnuaKRANNvPkUP0fHta5GmBjVGoCGitB/B5ykDOnglJoXCi/KVb3LSezIGh4QD12
 cNsfk2GcQEnj+hFthlQBr1U0iFowf6kuN354udcMkGhYc2oR6bCFyJv9MiPJY0PP
 Ta4IV/d81dR5E90cqVDTxxBXvwaDQmdx8cCeBN6iop3qva6GKuW9jtiZtav4r7t0
 j1+AQUUMO/7rjcEhliKPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709080908; x=1709167308; bh=VUViz7u7gfm0YiAV3AIRkcwATKbv
 LRy2xU8f9D5/5yM=; b=cDdZIMyeNpXC+zRHxPN9M8sQpikxltOBtbV1N34hBGJw
 K2UJ33hjmP3X4KWzZ2l52hV6YqkjaqiEqIVTT+tVswDTeceJ8cz/kw0YKx0FYAzm
 R8H4ENuY+4Px2aYUvST/J7j/xEEZVaMeq0YOG8jA4rk4m4SaVVGgCKwtP1B84+Hq
 zHipjIYnc5uZQlhcC3su3LdJ+Qk/lDD+lFIyJNnX5759FceRzD8vQd20zMWlFjTH
 sr5m3BiLcPwzepcT08xs7+lD6h7FEDLSQe01r2V+7Bkpi7nCYmOT986TVZprDBlN
 cTAf+w4w8Eio0EQMS6CbHgFlKmNfmE0Qog7Wwv2Fhg==
X-ME-Sender: <xms:TIHeZQkh6n2WafZYxlQ6s5m2JqmgD--BSkyMnapLO7LDRU0AeLrW9w>
 <xme:TIHeZf1CoIAr1kDFJB5bjYkDnoV6_yXAc2vchXzR2yNmXpckwmwF_9Vv6sFukpwoz
 8czC0400bDY0EPjNOc>
X-ME-Received: <xmr:TIHeZeorCN8WxYE0CW7FlkRcWEgPT1UmCkSd9P0i5Vj94vnyHIG6DJ8Wwrz4LV6TVaCSpNvocUS1bJufV-ic2aTaldCvBGrepA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrgeeigddvhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpeffhffvvefukfhfgggtuggj
 sehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeej
 hffhgeeutefhfeeugfeggeduhfekffduhffhheekhfdtveefhfejjefftdfgjeenucffoh
 hmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttg
 hhihdrjhhp
X-ME-Proxy: <xmx:TIHeZclaivrRWFDYnhQMbGUJB4Tf0xSnNT-fOQoUeE09CyYlRR9OcQ>
 <xmx:TIHeZe0BCTZovytQUYHpnI1JJMdQBe9NKhW4BE2U7oJI-9Syro_yog>
 <xmx:TIHeZTtc8-ZwjWJyIdAgz8LTKrrpl8PLbn43IRIueVoKRjOQa2R9-Q>
 <xmx:TIHeZT-WnEvm9kLwWbE9AJyLfx_GFjRYkBCQ6oui8YOTn-kj9hC4SQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 27 Feb 2024 19:41:47 -0500 (EST)
Date: Wed, 28 Feb 2024 09:41:44 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: use long bus reset on gap count error
Message-ID: <20240228004144.GA72391@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZdxH-mjmd09jmYZN@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZdxH-mjmd09jmYZN@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Adam, Thanks for your effort and the patch. I would like
 to send it to upstream, while found some nitpicks. On Mon, Feb 26, 2024 at
 12:12:42AM -0800, Adam Goldman wrote: > From: Adam Goldman <adamg@pobox.com>
 > > When resetting the bus after a gap count error, use a long rather than
 > short bus reset. > > I [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rf81H-0005YH-H5
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

Hi Adam,

Thanks for your effort and the patch. I would like to send it to upstream,
while found some nitpicks.

On Mon, Feb 26, 2024 at 12:12:42AM -0800, Adam Goldman wrote:
> From: Adam Goldman <adamg@pobox.com>
> 
> When resetting the bus after a gap count error, use a long rather than 
> short bus reset.
> 
> IEEE 1394-1995 uses only long bus resets. IEEE 1394a adds the option of 
> short bus resets. When video or audio transmision is in progress and a 
> device is hot-plugged elsewhere on the bus, the resulting bus reset can 
> cause video frame drops or audio dropouts. Short bus resets reduce or 
> eliminate this problem. Accordingly, short bus resets are almost always 
> preferred.
> 
> However, on a mixed 1394/1394a bus, a short bus reset can trigger an 
> immediate additional bus reset. This double bus reset can be interpreted 
> differently by different nodes on the bus, resulting in an inconsistent gap 
> count after the bus reset. An inconsistent gap count will cause another bus 
> reset, leading to a neverending bus reset loop. This only happens for some 
> bus topologies, not for all mixed 1394/1394a buses.
> 
> By instead sending a long bus reset after a gap count inconsistency, we 
> avoid the doubled bus reset, restoring the bus to normal operation.
> 
> Signed-off-by: Adam Goldman <adamg@pobox.com>
> Link: https://sourceforge.net/p/linux1394/mailman/message/58741624/
> ---
> 
> --- linux-6.8-rc1.orig/drivers/firewire/core-card.c	2024-01-21 14:11:32.000000000 -0800
> +++ linux-6.8-rc1/drivers/firewire/core-card.c	2024-02-12 01:16:15.000000000 -0800
> @@ -484,7 +484,17 @@
>  		fw_notice(card, "phy config: new root=%x, gap_count=%d\n",
>  			  new_root_id, gap_count);
>  		fw_send_phy_config(card, new_root_id, generation, gap_count);
> -		reset_bus(card, true);
> +		/*
> +		 * Where possible, use a short bus reset to minimize
> +		 * disruption to isochronous transfers. But in the event
> +		 * of a gap count inconsistency, use a long bus reset. On
> +		 * a mixed 1394/1394a bus, a short bus reset can get
> +		 * doubled. Some nodes may treat this as one bus reset and
> +		 * others may treat it as two, causing a gap count
> +		 * inconsistency again. Using a long bus reset prevents
> +		 * this.
> +		 */
> +		reset_bus(card, card->gap_count != 0);
>  		/* Will allocate broadcast channel after the reset. */
>  		goto out;
>  	}

In your report, you referred to the section of 1394 specification about a
mixed 1394/1394a bus responding differently to a reset (8.4.6.2). I think
it preferable to add the section number in the code comment.

Additionally, for your investigation, you added the debug print to get the
timing of bus reset scheduling. I think it useful for this kind of issue.
Would I ask you to write another patch to add it? In my opinion, the case
of mixed versions of 1394 PHYs in the same bus has more quirks and the
debug print is helpful to investigate it further.

And I'm sorry to be helpless to your work. I have some IEEE 1394 hardware
for consumer audio equipments, but the most of them is relatively new and
support 1394a already...


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
