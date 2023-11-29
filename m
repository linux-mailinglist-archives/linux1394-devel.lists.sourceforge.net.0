Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E02167FD864
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Nov 2023 14:41:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1r8KoP-0002g6-V9;
	Wed, 29 Nov 2023 13:41:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1r8KoO-0002fv-R9
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Nov 2023 13:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LJHcaiUIZmUHUHy34vYpfbH0nU+iQXyH/CSWNtWUzB4=; b=XYPEl79OfQk3RsbRNNr35m7K3b
 TCNm0x31YVQbJ9rfWCYtq+bz1RqZKUh20XSbfkJBs72swQkBlCXA/GJvAeRcVhgq3T/U13lqRVJk7
 RJZWDIRwrnSuNgCchd62fSWMQwoS2NO0UNzVJC+FKhR764KfBaSLJAzEGjbEp2JmWxZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LJHcaiUIZmUHUHy34vYpfbH0nU+iQXyH/CSWNtWUzB4=; b=M7Ep249aUarnM4zj/OzTil8Oef
 k+jqjdnew12x/OXxXFcl/RO/3SpZWDhBn3e8h5bHqKFcXoCRJh3isk7upVsJ1VIjsrM79/NjZlvzO
 GLV0Dob7jucNL5MtI6A8PLuAgPFTUPZ4XKVvJaMpVF5PDpnoCbyUCmJRZE1mywvTycXk=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r8KoG-0005VJ-JN for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Nov 2023 13:41:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id ECFAC5C0226;
 Wed, 29 Nov 2023 08:15:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 29 Nov 2023 08:15:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1701263754; x=
 1701350154; bh=LJHcaiUIZmUHUHy34vYpfbH0nU+iQXyH/CSWNtWUzB4=; b=Z
 oya6NN71KWh2ZS0bKf3H6ISeq9fbIF+/axjuo59o/Fv6FaKr85W+j3gBAdI6pUbd
 yNcKCgdWbSc0Se/4jOWLWuZ9pAiGUp0ikCMCR0/W4b9TkfP3+T2IoX+YIDi51Miz
 8624DAJhojCC4IDSKReRn6l+jEVZ9uljFBKOD3mHJmEYTqXFWaU6kcbMaJr4RYSh
 WPrnRIxANv2ZewB1nAVzeDb9cgzQIHkJI8l8HNwldHpG75VZsbh3mPUFCD4DLimC
 MlWimRtQYwSf48d1eVcBVXw+9BmFgTMwaHdsTLsQZIzQUXjulw0hyo5s+asYv/3K
 DMijKHtirLRnNEK3a12hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1701263754; x=1701350154; bh=LJHcaiUIZmUHU
 Hy34vYpfbH0nU+iQXyH/CSWNtWUzB4=; b=vQqa+/Aq4odO+z+4Eru4Yh0FB6XDd
 Ij7u9qLtvKNM0TlBY24UlXusVXt8WJ5efRb8M1NcFV0vUoHmX/Sg8/38r61KNy1t
 J5KP2Rat8Fc0rJTXwHGk78A9SRjhwVvDGPefse4ohsUWh55pa0o4RW7JSN6MiHeS
 30QQPxs2fSeIbv/W8zEpWKbT/FSl+IyP2/S8/aeTzyzHppA08daQ8dd97VCOzjM7
 LDWj08OLSpYp7sDIIk5s+oXrHrXdKNFon9MV8pPxkzu8cvkVvloJ7LCa6Q2srxrl
 npD0/rRZf5TXdKyWvIIogMqjgMt7SjDWZ0agCrN77/671jDuVEoSA45SQ==
X-ME-Sender: <xms:ijlnZfWMNUUkbCgbf08ENZu8e_ITwAIwXMW3i-yh2zdoGpCLJ9vwmg>
 <xme:ijlnZXk-Q0SKi1vr-AZLBSaXcT8xzjtaX8xuqx7RoELyYYIpPVdqsrSRYX77LB6Ui
 bx7Apuz_2_sq9hW9o4>
X-ME-Received: <xmr:ijlnZbanrvdxDCr039Btu9nLWOItC5c1wEMWIQ00w2WBerA02r-uJtdk-75IZ6y2nIsNkkYvIpgfk5ey2aT6aioVrus2Ij7Uow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeihedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:ijlnZaVYthTNoWkkpG_OYiD3jungFeJD8by7PG9g2sgumfZ8d2EGIg>
 <xmx:ijlnZZnAp68vMpYfPN8cYw6v6637fB7ACjQUKKAUpD6d34i-GHdY3g>
 <xmx:ijlnZXcTaT14crxtFGNQgTtoPQFGPMSoocOYIVp5mzAC5abCJOOHxQ>
 <xmx:ijlnZZvzv1JMirAQ-cGWTZUOgs5d0W665n0YrP9-MkDC9nTQTDgspg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Nov 2023 08:15:52 -0500 (EST)
Date: Wed, 29 Nov 2023 22:15:48 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Yang Yingliang <yangyingliang@huaweicloud.com>
Subject: Re: [PATCH] firewire: core: fix possible memory leak in create_units()
Message-ID: <20231129131548.GA8078@workstation.local>
Mail-Followup-To: Yang Yingliang <yangyingliang@huaweicloud.com>,
 linux1394-devel@lists.sourceforge.net, yangyingliang@huawei.com
References: <20231129093408.903846-1-yangyingliang@huaweicloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129093408.903846-1-yangyingliang@huaweicloud.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for your catching the bug and posting the patch.
 On Wed, Nov 29, 2023 at 05:34:08PM +0800, Yang Yingliang wrote: > From: Yang
 Yingliang <yangyingliang@huawei.com> > > If device_register() fails, the
 refcount of device is not 0, the name > allocated [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r8KoG-0005VJ-JN
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
Cc: linux1394-devel@lists.sourceforge.net, yangyingliang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for your catching the bug and posting the patch.

On Wed, Nov 29, 2023 at 05:34:08PM +0800, Yang Yingliang wrote:
> From: Yang Yingliang <yangyingliang@huawei.com>
> 
> If device_register() fails, the refcount of device is not 0, the name
> allocated in dev_set_name() is leaked. To fix this by calling put_device(),
> so that it will be freed in callback function kobject_cleanup().
> 
> unreferenced object 0xffff9d99035c7a90 (size 8):
>   comm "systemd-udevd", pid 168, jiffies 4294672386 (age 152.089s)
>   hex dump (first 8 bytes):
>     66 77 30 2e 30 00 ff ff                          fw0.0...
>   backtrace:
>     [<00000000e1d62bac>] __kmem_cache_alloc_node+0x1e9/0x360
>     [<00000000bbeaff31>] __kmalloc_node_track_caller+0x44/0x1a0
>     [<00000000491f2fb4>] kvasprintf+0x67/0xd0
>     [<000000005b960ddc>] kobject_set_name_vargs+0x1e/0x90
>     [<00000000427ac591>] dev_set_name+0x4e/0x70
>     [<000000003b4e447d>] create_units+0xc5/0x110
> 
> fw_unit_release() will be called in the error path, move fw_device_get()
> before calling device_register() to keep balanced with fw_device_put() in
> fw_unit_release().
> 
> Fixes: 1fa5ae857bb1 ("driver core: get rid of struct device's bus_id string array")
> Fixes: a1f64819fe9f ("firewire: struct device - replace bus_id with dev_name(), dev_set_name()")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  drivers/firewire/core-device.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
 
Applied to for-linus branch. I'll send it to upstream as fix for
v6.7-rc4 within a few days.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
