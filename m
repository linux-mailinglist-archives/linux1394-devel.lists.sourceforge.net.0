Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D61959FDE
	for <lists+linux1394-devel@lfdr.de>; Wed, 21 Aug 2024 16:29:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sgmLD-00042X-Ec;
	Wed, 21 Aug 2024 14:29:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sgmLC-00042O-4f
 for linux1394-devel@lists.sourceforge.net;
 Wed, 21 Aug 2024 14:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KjMAVAcSGnfZBXM47hogT6pOxUn239BFkFX3wckyOlU=; b=S4NFEwjxobotkLEgySAnAOLDpj
 kqSG8E8vYObVFRQiX6w6mtobGpbFxPSyFSDrNVOCo8Sknqi2f6Kbeth8rrITAVg2dsLLu3OBTFsL4
 oYs0sUZIK/Kr20KlXFk/tA7o/m+LQXwBapRhifpYo+pwIe8tYq4ugtZYUX+N+BxIqugk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KjMAVAcSGnfZBXM47hogT6pOxUn239BFkFX3wckyOlU=; b=ecN2+2xktbCxt4f0tswk4VEVvD
 pCdbnd7IvsModNOtZ2cQNmYjmUgJboZI9/UXgVFVCEkMXyvT6y3Wmdi1khG5PaJ/XhMKcDhAfeVJW
 uYbJ2QOkf0D+1I+cDC5q7IJUOCxKMXr9Oaylnpwy9uEjIh3Zr6ZJh4+i5Z53zumYqUZ8=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sgmL8-0001Nl-Ma for linux1394-devel@lists.sourceforge.net;
 Wed, 21 Aug 2024 14:29:37 +0000
Received: from phl-compute-06.internal (phl-compute-06.nyi.internal
 [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 16E47138FEBB;
 Wed, 21 Aug 2024 10:29:24 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Wed, 21 Aug 2024 10:29:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1724250564; x=
 1724336964; bh=KjMAVAcSGnfZBXM47hogT6pOxUn239BFkFX3wckyOlU=; b=G
 cT3GiWTC7Yi+d9iN2CIMzd5qiDYwKM6oRIhBMN5KMJmHVEov1ur/+Un2IJiDx5xl
 BhKsg9z65d7N6YXP/79cZeVB1U5Vhc5bUhoXYb+x+jb/xoFsNAUWFDQCyfgobPvp
 6IeVCLk6vgw1bp+vdKKqIciNz5A6lX9edWA4f5Yt5aBvopE826k5ysLuF4xTcjXY
 lArH48j3znArJTgMlA/DFn0/jlutGrt0oPqiYSMAdtDxIP3i6a9ldY7eaOqpTbiN
 em01updDc0Cfc2KQJPoyM0LFZSHkAQswotuq1DweG2WDGD5szvmC1QsNgcQMYyht
 wN9ndDlZ1UoEdYWBeIxuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1724250564; x=1724336964; bh=KjMAVAcSGnfZBXM47hogT6pOxUn2
 39BFkFX3wckyOlU=; b=M6jgqntJrns2iOEYOiIQmoVudHIeOXMio/xIEH4l4dIo
 AQ2HbTy3wmZggKB5jHpFKpC9X+wP7YVkm/iPJl+RvHHis5hByFxR6hE2SlZRYZJe
 7tIAOQZtdHMjB4aY99SSwbxrqkVmdnkw/Wm2BucA/WjHjL9T2lTGwql1RsoM4AN5
 ut5ve9n1dRhIFWKoiQAIT1pBlTVzPeNUUo6EkJJf51IRRfzeAjOlLGo/U/jc9EP0
 zktojJIguoi+BkQa+Xsa6gJ6h11wPtmrL3WNGiOFUQApZqaFMMJX/6NwMOYbU12v
 Xkcfmh9YsYSlTUs43qz70Tfc9HnAHggG6nY9NVHG4Q==
X-ME-Sender: <xms:w_nFZiGDFi5l0IA-jMps3FdZQyJ34M0yzlvZFW7bj4exrZTVerfBcw>
 <xme:w_nFZjWXx6GDAVNeLhmLbwLNPoXERZE5IPweZCqhtqz_dMOXUHg4N3zPygVNaKWjX
 BB_Jyj-_B7g5EQlvmc>
X-ME-Received: <xmr:w_nFZsJXEYZbHC7O3rNwvLbXevtsPdu4kldutezou54ub7a58tXdCYUzmVXfZC82deQrFYcAEdnGNPe2Zf5mlbJ2MzSrMbNthg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddukedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeff
 udduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnh
 gvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtth
 hopeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeiiihhjuhhnpghhuhesihgt
 lhhouhgurdgtohhmpdhrtghpthhtohepghhrvghgkhhhsehlihhnuhigfhhouhhnuggrth
 hiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
 rhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhish
 htshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehquhhitggpiihijhhu
 hhhusehquhhitghinhgtrdgtohhm
X-ME-Proxy: <xmx:w_nFZsEV9hGT29NSd3GTszkMnbeY_p-VkBdZq4W8FW6Beyv0Yf4Zag>
 <xmx:w_nFZoVtgmVLpU-DIwoT4WPHH0SGMIa_w-YzyA6LOeq4dGvVnhspkQ>
 <xmx:w_nFZvO7cDQ9kaXvQgt3tu0Yldah_-UbOeedohmTCsEivo6DeHbYzg>
 <xmx:w_nFZv3pfQ3VXWv0tv_p3BW01BzNeUZ9sAckDGj6GuuKeRqB9Czfvw>
 <xmx:xPnFZidrllUSAVrqmNu5iz32rfTVBLTTRW5iYAXPjFF7KCntB0GGSWx0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Aug 2024 10:29:22 -0400 (EDT)
Date: Wed, 21 Aug 2024 23:29:20 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Zijun Hu <zijun_hu@icloud.com>
Subject: Re: [PATCH v2 3/4] firewire: core: Prevent device_find_child() from
 modifying caller's match data
Message-ID: <20240821142920.GB48808@workstation.local>
Mail-Followup-To: Zijun Hu <zijun_hu@icloud.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Zijun Hu <quic_zijuhu@quicinc.com>
References: <20240815-const_dfc_prepare-v2-0-8316b87b8ff9@quicinc.com>
 <20240815-const_dfc_prepare-v2-3-8316b87b8ff9@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240815-const_dfc_prepare-v2-3-8316b87b8ff9@quicinc.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Aug 15, 2024 at 10:58:04PM +0800, Zijun Hu wrote:
 > From: Zijun Hu <quic_zijuhu@quicinc.com> > > To prepare for constifying
 the following old driver core API: > > struct device *device_find_ch [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.147 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgmL8-0001Nl-Ma
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux1394-devel@lists.sourceforge.net, Zijun Hu <quic_zijuhu@quicinc.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Aug 15, 2024 at 10:58:04PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> To prepare for constifying the following old driver core API:
> 
> struct device *device_find_child(struct device *dev, void *data,
> 		int (*match)(struct device *dev, void *data));
> to new:
> struct device *device_find_child(struct device *dev, const void *data,
> 		int (*match)(struct device *dev, const void *data));
> 
> The new API does not allow its match function (*match)() to modify
> caller's match data @*data, but lookup_existing_device() as the old
> API's match function indeed modifies relevant match data, so it is not
> suitable for the new API any more, fixed by implementing a equivalent
> fw_device_find_child() instead of the old API usage.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/firewire/core-device.c | 37 +++++++++++++++++++++++++++++++++++--
>  1 file changed, 35 insertions(+), 2 deletions(-)

Please drop this patch from your series since I applied another patch[1] to
for-next branch.


[1] https://lore.kernel.org/r/20240820132132.28839-1-o-takashi@sakamocchi.jp

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
