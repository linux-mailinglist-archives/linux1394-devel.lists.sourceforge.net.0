Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F8816E89
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Dec 2023 13:50:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFD4z-0005WJ-E4;
	Mon, 18 Dec 2023 12:50:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFD4z-0005WA-3f
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 12:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmsqqJeIAUf+XP0ART0QYJLK60XqmBNUAlO8Smcs/NA=; b=hjiSgqe4qTiLm1xe6xjZfSpdEB
 BAbMTIMouOpJEo3/zvO4EDNHtArGfTCcNLIc53gnRvWOoGr3PkYyf1A9hH+9yo80z0anLfLbheV1s
 p70N/YOc9pXRPgM69mgSwc+CfJ+BynFmYiA7PUtLrh39vXNpkp6pHKYBoWQVGjT9oDpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmsqqJeIAUf+XP0ART0QYJLK60XqmBNUAlO8Smcs/NA=; b=NdsKfvvoMAEug05EactsP1by0P
 nHucE/yY8rlUdiYsr9bGWlUp4/NLWizIsWq8+CbgPkaWETffV8nQA0DQm0fgUCBsuied1Mq14r+GG
 5agw/e5Uad0XrmbBpJ5RbTvmKAV6Y3ZqCg0BEJZ7Hi28fltCfKieZ+TBLI6aeAMvhLjM=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFD4y-0008D0-M9 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 12:50:41 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 168F75C00F3;
 Mon, 18 Dec 2023 07:50:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 18 Dec 2023 07:50:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702903830; x=
 1702990230; bh=bmsqqJeIAUf+XP0ART0QYJLK60XqmBNUAlO8Smcs/NA=; b=N
 /XaTCLpHp699rU1sbmc7RsHjmuXN/qRrVfr8DDqoak+99OSWs/R4PQ2AE4KNMi+4
 j1hC4NxNb94KKR6PGmwMhS3IdZfHy0UhuTm56wMZd8pzw4rEl+LwPuqo4wI1+spM
 LWrkvywVYqUHrOMDvGp/8rVGquMNNvuimAu1qlgMd82W5FE1AwSKsa8CZSQ9txfz
 IRapoyMlgjtg8YpHfjXU9tDqymomwifuqmIbt6jGkpFosvutCb04rT3JJy5WId3Z
 KCXkIaJfVIH/ynzaxStx2770g28G/t7kTum0/l+tinbFR/MMweCLBIuT36Cl58sL
 UgbOGc9l4Vr9mfkubV+nQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1702903830; x=1702990230; bh=bmsqqJeIAUf+XP0ART0QYJLK60Xq
 mBNUAlO8Smcs/NA=; b=tYC0tK7atZeLDqneS7XsdOUOWPpfTntA0ZVpMztcjlUA
 7b8KDr6xBBFqiDsj0tU1uN9lJHzFebDFp/1ocg/lo8kFcmHoWGwzvvdQ0VYPb8R3
 NsA9vV4uFXcmOMEigOnPnbF4X3Oo5NgOwQRCtLulbzaqPeOmS9D7Wgp5OGIGSjGm
 TDzJmtbT14ujoEBq2tXtUy4ot+E0K0iMAod12EDbi4IEJOw5R/zQ0xXavn5lWLUb
 NY/eifK7NRjOKYRyifK/CG0jSvzFNGmMeZDTxXnj8MgHyBReINzgUg0OWNc6DpWM
 Kpgel+mda7c53U+MW4OX/JT18yVdbAGE4puclZnjZg==
X-ME-Sender: <xms:FUCAZVznSmdObSmGZaThOZDUm3cdPxj8iWb1B2NFSS-lvGHGT6zGvg>
 <xme:FUCAZVRGh58Ybkgr4lLZIZT4U_I2HioQHzAtdT9Fm0sfS5Z6bmVN3GfPZkUGDsN34
 cHjEOSmxDocux59hIk>
X-ME-Received: <xmr:FUCAZfXBmBo38v1A5BJ-lTeeeV5q78fH5LqwrsmmgsheuEdghJ1PxgQyTXUXHYD0fl4LTjYwr8TjVkzBkqiWHFska8KIAM66pIE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtkedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:FUCAZXgfDBrv0J-fewvJwSovwKa-cvG1l7dVg4OuDAjPAunJU8J_3A>
 <xmx:FUCAZXD6UkpnW63zuHQ5W4sWn7rEN7tB-ISImNaECefs2XaaEdP3Vw>
 <xmx:FUCAZQLee7JegDn4CpOSlePppN7K0VYQBb9sv28BSPW9XAye0BY4HQ>
 <xmx:FkCAZc6hyhJN0j_kRK6Af5sxJXqvXDkuxj9OlGKSZ1hMxWOJgIAnZQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Dec 2023 07:50:28 -0500 (EST)
Date: Mon, 18 Dec 2023 21:50:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [RFC PATCH 7/8] firewire: core: detect model name for legacy
 layout of configuration ROM
Message-ID: <20231218125026.GB46034@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
 <20231217103012.41273-8-o-takashi@sakamocchi.jp>
 <ZYAZPRt79Qa1YPS0@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZYAZPRt79Qa1YPS0@iguana.lan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Dec 18, 2023 at 02:04:52AM -0800, Adam Goldman
 wrote: > Hi, > > On Sun, Dec 17, 2023 at 07:30:10PM +0900, Takashi Sakamoto
 wrote: > > - ret = fw_csr_string(dir, attr->key, buf, bufsize); > > + [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFD4y-0008D0-M9
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

Hi,

On Mon, Dec 18, 2023 at 02:04:52AM -0800, Adam Goldman wrote:
> Hi,
> 
> On Sun, Dec 17, 2023 at 07:30:10PM +0900, Takashi Sakamoto wrote:
> > -	ret = fw_csr_string(dir, attr->key, buf, bufsize);
> > +	for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i)
> > +		ret = fw_csr_string(directories[i], attr->key, buf, bufsize);
> 
> I believe this is incorrect. If the attribute is in the first directory 
> searched, the loop will continue. The second loop iteration will set ret 
> to -ENOENT because the attribute isn't in the second directory. Then 
> show_text_leaf will return -ENOENT even though the attribute existed.

Exactly. It is a bug.

I think we can solve it by aligning the pointers of directory in reverse
order within the array, like:

```
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index d3fc3270a00b..adae3268291f 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -326,13 +326,17 @@ static ssize_t show_text_leaf(struct device *dev,
                directories[0] = fw_unit(dev)->directory;
        } else {
                const u32 *root_directory = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+               const u32 *vendor_directory = search_directory(root_directory, CSR_VENDOR);

-               directories[0] = root_directory;
-
-               // Legacy layout of configuration ROM described in Annex 1 of 'Configuration ROM
-               // for AV/C Devices 1.0 (December 12, 2000, 1394 Trading Association, TA Document
-               // 1999027)'.
-               directories[1] = search_directory(root_directory, CSR_VENDOR);
+               if (!vendor_directory) {
+                       directories[0] = root_directory;
+               } else {
+                       // Legacy layout of configuration ROM described in Annex 1 of
+                       // 'Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
+                       // Trading Association, TA Document 1999027)'.
+                       directories[0] = vendor_directory;
+                       directories[1] = root_directory;
+               }
        }

        if (buf) {
@@ -342,8 +346,11 @@ static ssize_t show_text_leaf(struct device *dev,
                bufsize = 1;
        }

-       for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i)
+       for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i) {
                ret = fw_csr_string(directories[i], attr->key, buf, bufsize);
+               if (ret >= 0)
+                       break;
+       }

        if (ret >= 0) {
                /* Strip trailing whitespace and add newline. */
```

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
