Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDE24FDD99
	for <lists+linux1394-devel@lfdr.de>; Tue, 12 Apr 2022 13:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1neEbK-000426-JO; Tue, 12 Apr 2022 11:22:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1neEbJ-00041y-6S
 for linux1394-devel@lists.sourceforge.net; Tue, 12 Apr 2022 11:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KPZFl+zUr69t/646Egboka8UL5M06q8AkE3vXXNQoBs=; b=ZlS4Xx8caoGGxnbDlffdrp00V2
 I558l4/RPGBZgl8WEO589byl7aYtEQYpxHIIeNrZLV5u4jDsAjs2KCVJ5JDF+ht68BE//R7EnJ/o5
 vR0GYzbMBwjWJOWTiYb2mUf580VXKeZP9M/O1RV8IIBRwaTH0WF0KNevsbP76QgFCgvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KPZFl+zUr69t/646Egboka8UL5M06q8AkE3vXXNQoBs=; b=WkH2C6GveaPP07xt7tSeMCOVRm
 h+4PO3OSChOefzTi5+4VaDkBVt9RgOY2RU7vG4qOXv8wx2VzgWgxpvYr4oWrI3EkTuOIupVlBCo6j
 tLc6rYZJsVGV9PiitJT3DM35VIkXnFNyWGbyqNz3d1E0++NhK+MfHResblBL3RmKT1N0=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1neEb9-00Dxj8-Iw
 for linux1394-devel@lists.sourceforge.net; Tue, 12 Apr 2022 11:22:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5710C5C0269;
 Tue, 12 Apr 2022 07:22:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 12 Apr 2022 07:22:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1649762527; x=1649848927; bh=KP
 ZFl+zUr69t/646Egboka8UL5M06q8AkE3vXXNQoBs=; b=pX+4232Q9TXW4yP/a1
 R1BxNARz4dR7D5YCwTYdaxr8INFIhb6PIbl04Xt5SNCHXNRHrZRnpT2dvlHbGwOU
 I6AILER+nvsN0bABWf9bKj6a4yiOvXJC9a14I1RxUmCStSqRgpOTbcLdTeygZdly
 m2pWlOMsLVsXx2AWtJKdnVkL3nZQo1yRuTLpKeKmrrFY+DZiSq0/QC6aHJ+R7aM3
 8EwXfSAckZ7NQZrtA0cwzB912d+SriEG+XbkA4TBmmOBxVuWIr9tdnEnYoAgGk0m
 xcNAru2x8O+lppc6f8XeJDA1R0PoFMJswevoGuDDPqAVC+828OlJGsrIR9w7DwB9
 2/2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649762527; x=
 1649848927; bh=KPZFl+zUr69t/646Egboka8UL5M06q8AkE3vXXNQoBs=; b=Y
 9uncMXn45ChqGDxw2b0yQ2I94QzNXR7JpqEVynwVDzS2+cpO+udMiLWZ/xckC/iq
 CMXKS33zrHvkxDQuDEgphtKEI+h8rEFw+v4UTZbtic2/mmDRm+Wf9qYkbblVtP85
 3f7uJU1cTxpM5pmTKRw72vkKFLywOGaLMhDThlUswG9nj9iCzoKJSt9muDpGALnj
 MAZbH1oKBjF7p2gJJYXFGJ6GmtM1iIjppOGXxFWdO6CPMwAREY4/OJY9bOq3sxyd
 yKbh4q88tMV/QVqC3Z8/4pjZyrd/JrQgWTDGmuhQVMSC068YvuxONAJsW8f13B72
 5wMgyJQX8fdBPmArOua6A==
X-ME-Sender: <xms:32BVYlCrjQaPzYvPv4vqKOcGH9ZCUAXn2ZN1i1bTuPVPyWj0TPhQQw>
 <xme:32BVYjjt8aeiWoaD4luldVl5THVoqekv3B1Z__LNnnhVN0pUOFP2hCXLjJzA4q5Hk
 ovptberySGlFxm_wOY>
X-ME-Received: <xmr:32BVYgmpIhT0s0u6Lhz4qfmwtPwfF05PNdc0zbxz5U2-f_rgpR-a0G3V2nHix00KU6MplkTWqSNZthBLXnjyOHpaSzLV8wQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekkedgfeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeelhfeugedvjefgjefgudekfedutedvtddutdeuieev
 tddtgeetjeekvdefgeefhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:32BVYvx6z53PZlSYybX2_mafXMos7XQZvTr45aetqSXm2kUwUny-rQ>
 <xmx:32BVYqSJab63oi5Z4eGeu2vcxLWABnZLnOhe2YJwGpT_6fSRt2pWTQ>
 <xmx:32BVYiaPr4CXRM0Tvvlu0qw4e3ytFHvpvmbFoL9q40H4uRLISXcUxg>
 <xmx:32BVYlenlpUsI2pcOriw7JETAvYNGXr5178WFBhJLV19DeeFR2IqiA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Apr 2022 07:22:05 -0400 (EDT)
Date: Tue, 12 Apr 2022 20:22:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [bug report] firewire: add kernel API to access CYCLE_TIME
 register
Message-ID: <YlVg3I8kLIcBLZAE@workstation>
Mail-Followup-To: Dan Carpenter <dan.carpenter@oracle.com>,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20220411070124.GA12881@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220411070124.GA12881@kili>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Apr 11, 2022 at 10:01:25AM +0300, Dan Carpenter
 wrote: > Hello Takashi Sakamoto, > > The patch baa914cd81f5: "firewire: add
 kernel API to access > CYCLE_TIME register" from Apr 5, 2022, leads [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1neEb9-00Dxj8-Iw
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Apr 11, 2022 at 10:01:25AM +0300, Dan Carpenter wrote:
> Hello Takashi Sakamoto,
> 
> The patch baa914cd81f5: "firewire: add kernel API to access
> CYCLE_TIME register" from Apr 5, 2022, leads to the following Smatch
> static checker warning:
> 
> 	drivers/firewire/core-cdev.c:1235 ioctl_get_cycle_timer2()
> 	error: uninitialized symbol 'cycle_time'.
> 
> drivers/firewire/core-cdev.c
>     1209 static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
>     1210 {
>     1211         struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
>     1212         struct fw_card *card = client->device->card;
>     1213         struct timespec64 ts = {0, 0};
>     1214         u32 cycle_time;
>     1215         int ret = 0;
>     1216 
>     1217         local_irq_disable();
>     1218 
>     1219         ret = fw_card_read_cycle_time(card, &cycle_time);
>     1220         if (ret < 0)
>     1221                 goto end;
>                          ^^^^^^^^
> "cycle_time" not initialized on error path.
> 
>     1222 
>     1223         switch (a->clk_id) {
>     1224         case CLOCK_REALTIME:      ktime_get_real_ts64(&ts);        break;
>     1225         case CLOCK_MONOTONIC:     ktime_get_ts64(&ts);                break;
>     1226         case CLOCK_MONOTONIC_RAW: ktime_get_raw_ts64(&ts);        break;
>     1227         default:
>     1228                 ret = -EINVAL;
>     1229         }
>     1230 end:
>     1231         local_irq_enable();
>     1232 
>     1233         a->tv_sec      = ts.tv_sec;
>     1234         a->tv_nsec     = ts.tv_nsec;
> --> 1235         a->cycle_timer = cycle_time;
>     1236 
>     1237         return ret;
>     1238 }

Thanks for the report. Indeed, it leaks the unidentified value on kernel
stack to userspace. I'll post fix later.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
