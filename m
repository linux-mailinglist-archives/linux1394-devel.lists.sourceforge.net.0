Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E33C54B0A0
	for <lists+linux1394-devel@lfdr.de>; Tue, 14 Jun 2022 14:31:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o15h6-0004NM-DP; Tue, 14 Jun 2022 12:30:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o15h4-0004NE-OT
 for linux1394-devel@lists.sourceforge.net; Tue, 14 Jun 2022 12:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3WWdKPi3sbYWMPMvz2JjeEAhW9TDCuP3ySKbqmPRE9w=; b=I1tF0F4JxedEjPv4mRJBdnIBu4
 5zcNiPXcGJhLOBlCMhmMPrO03wNJYBHVqkWa++mLazsz+a5AeXb6bVjk+RHkrwm3BBg7YQIFmRGQP
 wfUzH/BdE+CIGqflDWMBIWzRR/2auHqusYlG2NNGBplNSKl87IZgqHRciXtYkREbbHlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3WWdKPi3sbYWMPMvz2JjeEAhW9TDCuP3ySKbqmPRE9w=; b=N0Qy4inHL+RE2i4TAsy0bSIA3c
 qpyPzek/v3y/Xsv5X0os5XR0cUcSs9PUGANer1ubkh5axBFz0jSuXmgPKh8JbtE2+gVM6jQ5gDxi1
 NY+aSXsetJW69HVac+5T3GpHjZwI32nHEEYL+WkBqhEjFAmmzVlrdNNAKut/YID95s7I=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o15h3-001Guv-SK
 for linux1394-devel@lists.sourceforge.net; Tue, 14 Jun 2022 12:30:51 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 9C0045C0139;
 Tue, 14 Jun 2022 08:30:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 14 Jun 2022 08:30:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1655209841; x=1655296241; bh=3W
 WdKPi3sbYWMPMvz2JjeEAhW9TDCuP3ySKbqmPRE9w=; b=mAj++dJszl2N9WpMsA
 Tx6EtwVRvCqQPsRIXhllt3IabYomh8sEJ8tsgKayuHUHg/DWLIWIyBagF77WuCc2
 9WlLUX7rEozG3OnT4LWTMQ09P/g2lP2QM2kAzAUHy9jbcshf8T+FIhWtB/bOOrC4
 QnJ27krX1uaNsIM6yWnP7+7i/tWz5P5iSLIl0qVlu9Q3WGV1qNxRuhVPXCvgHsBY
 rh8eIPK172nS8GXuouYe7c1UfpArUHHOZwh1RWhL1/5YBjrsGxXPokdj3wqYwUgS
 yT0ir7Deynbwx3daTF0gRVJOL45iAyvHZxF3c7NZldLm+QkiQDRNtlBZ8tqfprJR
 5zqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1655209841; x=1655296241; bh=3WWdKPi3sbYWMPMvz2JjeEAhW9TD
 CuP3ySKbqmPRE9w=; b=UaCTTUtPi39yZr19Xmj4shHzrwjW8JQmFcyrCNWFIt8I
 oerlYcjEqStALSfqf0uRWJpBoZ+RXQy9GAFupKoiNtsc2eAdifE+UPY8Hxuatu/l
 RfFZfmOERkSLv1ci3c6nkWv1cWbaC4LK3xWHH/Waw+r/R7z+IkcG6qdnpMS2wpbY
 Y5WnV3IcfQiy0+m0YuT2CA4gdLrLviZmOuVywAbKu6AJAytZ+my4Nl0qsfKtOybL
 lYSPs2wQP/rx5Iqdv2it1sW15vBOXV6H91zqZx42Lko57xaEsmoIIlGgx0bNI2WZ
 JmDRfO2Oz5OPV+w40ugKgvJ43n1/ZXkj4vB8RgUFJA==
X-ME-Sender: <xms:cH-oYtaEdaDP2bTzV08Oy-AZpXrhOKstLAouCFLxlcdM3odu83kg2g>
 <xme:cH-oYkbvnzh87OvVyoqm3AsaHY-Sj1fvjO0lKOKhn4ZiN1h9hIUdV8dFCRosoeVzw
 LXy7WWFt14C2PKGdPY>
X-ME-Received: <xmr:cH-oYv8c-gxTxR2fdNBqt2Ig7sTb1tblE8Xr1GvIa98cSmB90sDJvj-EEjupqMERn9ShGlDCMMueSjxUynLnaumjgySXknN6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudduledgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:cH-oYrregl5A_C5U3oc4TJeyvAC286B_APunC-F4mP3Pt3zz3pEiug>
 <xmx:cH-oYoq1j60bFBH_Qov-8sQb4yUQfvdAJn-redcpMJ7WYLZCC23Ujg>
 <xmx:cH-oYhTkaIsFPHtXYM-CWC2bUf-ooHZ1ZF9wEE7lCWW0_bWqn6wmVg>
 <xmx:cX-oYjU4umYVy3iiEnl9mOS-DCI64DwyXoDF4Cwop7rSKbCHhxLD2w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 Jun 2022 08:30:39 -0400 (EDT)
Date: Tue, 14 Jun 2022 21:30:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de, stefanr@s5r6.in-berlin.de
Subject: Re: [PATCH] firewire: cdev: fix potential leak of kernel stack due
 to uninitialized value
Message-ID: <Yqh/bDB+Bvwcjjrh@workstation>
Mail-Followup-To: tiwai@suse.de, stefanr@s5r6.in-berlin.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20220512112037.103142-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220512112037.103142-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Iwai-san, I have a moderate request to you for the patch
 which fixes an issue included in v5.19-rc1. If it's applicable and I can
 borrow your help again, I'd like you to send the patch to mainline via your
 tree [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o15h3-001Guv-SK
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Iwai-san,

I have a moderate request to you for the patch which fixes an issue
included in v5.19-rc1. If it's applicable and I can borrow your help
again, I'd like you to send the patch to mainline via your tree.

If possible, it's preferable to apply additional three patches I
respined[1], but it could be optional since not so critical.

[1] https://lore.kernel.org/alsa-devel/20220512111756.103008-1-o-takashi@sakamocchi.jp/

On Thu, May 12, 2022 at 08:20:37PM +0900, Takashi Sakamoto wrote:
> Recent change brings potential leak of value on kernel stack to userspace
> due to uninitialized value.
> 
> This commit fixes the bug.
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Fixes: baa914cd81f ("firewire: add kernel API to access CYCLE_TIME register")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-cdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index 8e9670036e5c..032ee56c34a3 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -1211,7 +1211,7 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
>  	struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
>  	struct fw_card *card = client->device->card;
>  	struct timespec64 ts = {0, 0};
> -	u32 cycle_time;
> +	u32 cycle_time = 0;
>  	int ret = 0;
>  
>  	local_irq_disable();
> -- 
> 2.34.1


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
