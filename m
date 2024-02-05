Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C768493C0
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Feb 2024 07:13:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rWsEn-0000bK-Vh;
	Mon, 05 Feb 2024 06:13:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rWsEm-0000b2-G5
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 06:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l0YLavRaGfdAe61ZNAx9jIh3U3DFqLWnxZLRX5o/LIY=; b=gflK5+IokpV8wxehFs7BFoNwuK
 lMxcwWhxjIw2Hq1GmokDIpGBLqRhiowCsG5oxdkwjh5zoNnBjN/g/z9DlCx0p56EZjHlmC73jV/pn
 FW4HgvBh5tkdJFmnVRZ1eRnHLlhEZBOgBQ4tslckgzj9T4Dd6bYGTU4gmXo3nHfEOxNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l0YLavRaGfdAe61ZNAx9jIh3U3DFqLWnxZLRX5o/LIY=; b=W6+rD4ypIojsToSKW0YM6ZFev5
 rkIvHSGnMWmk1eTSybRJAzkdAOQpKhLu6H+CuhR/rQN7kio7gJP6KKF6449mndd4j3UFVc/Ke84mB
 0d5jr/aDIo1zwUOKvqzGpnugS+YCHA6SCx4G4/yAICd8Up89NGIno9UiwsTbiPoSDdyg=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWsEl-0001r7-Lx for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 06:13:48 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id B13435C0111;
 Mon,  5 Feb 2024 01:13:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Feb 2024 01:13:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1707113622; x=
 1707200022; bh=l0YLavRaGfdAe61ZNAx9jIh3U3DFqLWnxZLRX5o/LIY=; b=G
 MS03Sv5fcgCGQVMaiYQbEOy7CQQOdbpyc1XHJ41PCoxIEmfOFRoU730TrC7kFvs3
 vB2m/0XC2Tih8HbNqwuYOix9I4Z+mO/tIvPl+PawKaT8GX46drin+JCmv8bUJYAl
 aFj8/e66beEAhX9clhpdzjo6UqXbkcN1HiK5jGJXgjjXK1YP0LmnaWZGNI7SroXp
 niNuNPXB14DGLhdXfh3LqEfbp2GF/+W3n0BBUkHaQYXTWu75G7S/cn5laoneFA1K
 Nqa/sVF9WC+IsAVfYRmwystU5RVpBgBOtNfZkNYFX2wptaRAGTbnOvlvQmaEN69H
 25EII46XFQ7RJqQNsXJZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1707113622; x=1707200022; bh=l0YLavRaGfdAe61ZNAx9jIh3U3DF
 qLWnxZLRX5o/LIY=; b=XJ5PHC0JpC+agL2FqdJMdA42FDAakwTZ3+iKA3OeZvpo
 nxl7gPggKICywLwmlBdwlAk4QWQTEJ5C4luaJ6lJVuKnV64mGPJCiVrYeamTMdDE
 E0fVSZEYsfj4y6ayaHlyVki/lh4dJ+PIiP3w8Gy65Zf0K7ep+6pgOBuq78cxP92u
 ErKH1g5qQw+VxKW7KEMut497pdObulp4jvmx3Ix9L7A2s5UdlRqooRnzBVFw18fZ
 +tXuLwjSQfnn6Ed4czrfNklSpIeBSg6lZpZzd9FT76xGrj7qHPTVK8SMfIi9JI5y
 CiHybxORnnYsf41+CoLHIL3qJPBO1NaWjwLlbLwnqA==
X-ME-Sender: <xms:lnzAZXcgn4fnb0oc2mYVRF5-R-Hos04D_ldb9u5F9ZX7TZPR6C51Zw>
 <xme:lnzAZdPYlR3D23jmAU28M8Sa90JxdeSYBS272TctLZ2IY34JkymGCRVVoN-GpDVKM
 XJoIjblzGEi97Wl3Wk>
X-ME-Received: <xmr:lnzAZQg8fw0NS04dvwJdZvRwg6j5vvhhwZatCSgcOusGD4OUgkZYyjcgcfup5rWlp59FmCkWbxns8SafsV8wNTrXNt81BvkdyOI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeduledgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:lnzAZY8rX5v0QegujmCh9IV1Ie7fgHvxipUkOCnh-_uYhVO48Lmz8g>
 <xmx:lnzAZTvKvw5wgaG_gDC5YIbQOL9q3yeUKmk6aQNBAsh-Naa3NPDHGA>
 <xmx:lnzAZXG5pLBWGV-7bP2yoIBUSd3-Q0ZngrmgEzgh-2xO28HGmP1X8A>
 <xmx:lnzAZc7DpaGJxwr10LGg6sKpme2ywk2ajV1Z_7ZjKUJ---CfWkW1Jg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Feb 2024 01:13:40 -0500 (EST)
Date: Mon, 5 Feb 2024 15:13:38 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] firewire: core: fix build failure due to the caller of
 fw_csr_string()
Message-ID: <20240205061338.GA14407@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 kernel test robot <lkp@intel.com>
References: <20240205060448.13881-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240205060448.13881-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Feb 05, 2024 at 03:04:48PM +0900,
 Takashi Sakamoto
 wrote: > A commit 47dc55181dcb ("firewire: core: search descriptor leaf just
 after > vendor directory entry in root directory") for v6.8-rc3 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rWsEl-0001r7-Lx
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Feb 05, 2024 at 03:04:48PM +0900, Takashi Sakamoto wrote:
> A commit 47dc55181dcb ("firewire: core: search descriptor leaf just after
> vendor directory entry in root directory") for v6.8-rc3 and a commit
> 67a5a58c0443 ("firewire: Kill unnecessary buf check in
> device_attribute.show") for v6.9 bring build failure in for-next tree due
> to the change of the name of local variable.
> 
> This commit fixes it.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/lkml/20240202111602.6f6e2c1a@canb.auug.org.au/
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202402022343.NkgsMITA-lkp@intel.com/
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-device.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
> index a802c6d4f4fd..c0976f6268d3 100644
> --- a/drivers/firewire/core-device.c
> +++ b/drivers/firewire/core-device.c
> @@ -366,7 +366,7 @@ static ssize_t show_text_leaf(struct device *dev,
>  			// in the root directory follows to the directory entry for vendor ID
>  			// instead of the immediate value for vendor ID.
>  			result = fw_csr_string(directories[i], CSR_DIRECTORY | attr->key, buf,
> -					       bufsize);
> +					       PAGE_SIZE - 1);
>  			if (result >= 0)
>  				ret = result;
>  		}
> -- 
> 2.40.1

I applied this immediately to fix linux-next integration.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
