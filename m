Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4D96B803
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 12:15:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sln2J-00080J-3P;
	Wed, 04 Sep 2024 10:14:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sln2G-000808-Ug
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 10:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nvb3h+Gb1zB7vP1UjexJohB7wGEttH6OHW/7nLMdI7s=; b=KQXAahYYvAuz8j/7lupI0yB0Fp
 2DL9APW8k41khcA7o7KKzU1sp5zEI+3uyPcCpYAFfNjJD0vfzCAKzf/ttcIL8Poiz+0thIL0bBpV5
 y9rekQQzBAuVFWnusj5P+wz2NOKq2U0ji0TQHIWO1+u5JvyegYeFcmoIz0FBPpkqMII8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nvb3h+Gb1zB7vP1UjexJohB7wGEttH6OHW/7nLMdI7s=; b=YVNA/HDj2MPtssT3tGKfLGoMKI
 1YYaOrHsRwVIbEJzJrVlIeadRt6cCZzQY9tvB9VpV1AGTNlnovY2lgfoPSaoavyd1nEE5WDlSxKLM
 kvVBilg7aC/iAc+BkDiGNX1UnAtwEkQR5PpqldK+QfglqUVVZ+ZajPqeoin7Y6oL6SFo=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sln2F-0006Dl-2L for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 10:14:48 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 6574D11402EC;
 Wed,  4 Sep 2024 06:14:36 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 04 Sep 2024 06:14:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725444876; x=
 1725531276; bh=Nvb3h+Gb1zB7vP1UjexJohB7wGEttH6OHW/7nLMdI7s=; b=r
 rTiHmf2vJU26QXOErSv85DWptvrvJEUq0sQiF5lhBP3B3K1W4EBGDj5/H7ss+/hn
 TfnG3bgI3zHhcifOmvJTYYOZd2TYOtUKueuaIjEP+my4gUTXiBF7upZgqDxqiyLW
 zA7A8RmiGrOVD4hMTscUpJnegsVd/PhGdE2rnodxuDAHSf6hg8Bh74BtU95admCz
 70QzNddLD/aCE48W4Q3Vygps+WuXMJWBknDaFfjqHWuVt2a8DW795dvzb60a2g8X
 ebPrY1IS2SN8Nzk4tObklO6MG8bm7mjPDbc6XFDnTxDxJVeaCEcCZdc9YIP89tiC
 vVENkLvlAUWt3kCalvRLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725444876; x=1725531276; bh=Nvb3h+Gb1zB7vP1UjexJohB7wGEt
 tH6OHW/7nLMdI7s=; b=PcJcJnAMVfUQKW/nMrhZeX+/eD9p89z5QVihGtz1LOkI
 1ajzAgIyBcFQ8UfuwMEr2BtfW5S4Mq30cLJCzBdWYizhlJF+XOQHkM9G4elFzigZ
 4Jajx/egc8i2rTQ/u82foyRjVF5DdchVOfE/Z45x6msOo694oBlHg5EB4k7CjgvE
 VJuSMA7gPfCbE7Nddo8bY6HvdX+EP2MJafJ3oid0I4BQW1FNoI7Pc5AiIhRoHyuI
 BAam7IzmDy2difnWVzq4D6PCxwEIk91KakD97D2HuTT0T1sINz275oyy2NGvWifi
 3bwob0pCI3Tbpg05IPO4idFqrgnYcW4eAMFKF8Y/MQ==
X-ME-Sender: <xms:DDPYZqtRA3fjrAvvFqJYp5k6ZSHpnLXMKTpl8hvBVFz0HNZDhgsDhg>
 <xme:DDPYZveDY4PE3MIbwAXmAT9VRdp_V1Z0BRSKkNiQMpgW3yjDGFheIXYf_N0RdsnAX
 2ucXFZLUBLJv-HNbDw>
X-ME-Received: <xmr:DDPYZlxyAytkcjTYv4oLbDZFj_ppgRRecVTC6UUuZVjX2vvIzoRoV_0jggj8BKY5PJStR5f6t6b__4h4HFndM1esqLrhkUP0uRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgvdehucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:DDPYZlPF6eJxZCnUc-Kl3hVKZzG5nDogmQO7cQOUJ8_GZhoxK0hrSg>
 <xmx:DDPYZq9amcPQwp9tzmGLr6kfjHuLk50LrAkV0C1Ko_xRw3jiuEOmdg>
 <xmx:DDPYZtVy_-saP58z2blKoSxPJTRA0pF8K_bm4OSkHH0A3iFmbE1jjg>
 <xmx:DDPYZjfU6AEZ9nCoREcudFbVLpQngtnPMV8s0J87Tx7Yw5sjjfix_A>
 <xmx:DDPYZsJuLf88aqDlyrgx5W-fSDdpIi2fvZjGzVuGBI_Iuby2N6-uh2-9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Sep 2024 06:14:35 -0400 (EDT)
Date: Wed, 4 Sep 2024 19:14:32 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: obsolete direct usage of
 printk_ratelimit()
Message-ID: <20240904101432.GA437448@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240903101523.317110-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903101523.317110-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 03, 2024 at 07:15:23PM +0900, Takashi Sakamoto
 wrote: > A commit 77006a0a8282 ("ratelimit: add comment warning people off
 > printk_ratelimit()") has already deprecated printk_ratelimit(). [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.157 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sln2F-0006Dl-2L
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

On Tue, Sep 03, 2024 at 07:15:23PM +0900, Takashi Sakamoto wrote:
> A commit 77006a0a8282 ("ratelimit: add comment warning people off
> printk_ratelimit()") has already deprecated printk_ratelimit().
> 
> This commit uses alternative functions to obsolete its usage.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
