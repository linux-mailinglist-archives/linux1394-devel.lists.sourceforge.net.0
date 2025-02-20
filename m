Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C13A3D09C
	for <lists+linux1394-devel@lfdr.de>; Thu, 20 Feb 2025 06:03:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tkyih-0004wC-AE;
	Thu, 20 Feb 2025 05:03:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tkyif-0004w4-Sh
 for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Feb 2025 05:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9mEVFLUyvs8sEJhryugUBE/GDAB4W49PXkBIcvI6FNI=; b=Bo0eCjznmmgfSE9iwZZK2GVg91
 dYHK3EcbzdoavvnlMgVYBJrGk3yQ3rjoNO89qTEyY2fYLBeNVP3VcfJ9ABRsBKEN6dRTbvCCWTGvU
 rPyCgQ4ICkZczT9UT8ytPDomR8G7lIPEc6X7c74C2YIgiBxhHOEsPz7V1oPhYamEYZ7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9mEVFLUyvs8sEJhryugUBE/GDAB4W49PXkBIcvI6FNI=; b=kG17eQ8LZYexjTe7oSzD+qZcrU
 uuShA4R3oQzosgdAdiBDJIokumllD1LI9sqdqYUa5Rf61Zs91ENDyVEWiycA51IqUnzGMp5p/4zWo
 qj+2l122GKHQQyZWChI6j4ruPcpdXGs6jyNVmlif6r+jJTLICVZ3DIz/CXsADkAYdyZI=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkyie-0003Nd-9f for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Feb 2025 05:03:29 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 941ED11401D9;
 Thu, 20 Feb 2025 00:03:17 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Thu, 20 Feb 2025 00:03:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1740027797; x=
 1740114197; bh=9mEVFLUyvs8sEJhryugUBE/GDAB4W49PXkBIcvI6FNI=; b=W
 x7xhbG98kNkIda0zueRAA+bYV/oItN8qfL5TJHnjIlsSngov5zSVx11AazYS0Ebb
 Tuq26agL4f/a9teH2CdZbB++MhLNaq2Ldbt+21inEJELzjRTJncvRjmvBGnyGes6
 2dIClKgNVXAbQGlvjKIo2OFEQFev2L/a8EeEs64JvsBZjVLUqQgq9IxZ04F2pN7s
 /ZZxDx6upoYRUj4FDKZibbp2kdceqO/jVHmM/k9hIRqZ4pLxQUJRkfJm0yiFZctS
 Gg8guyeDC5qOhsSzeuxF3FWqYTCcbygWxdyVBgpoW5hXKcHczo4FJIy7ZJuXjp66
 09f7x58AfADX6WtQkR0Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1740027797; x=1740114197; bh=9mEVFLUyvs8sEJhryugUBE/GDAB4W49PXkB
 IcvI6FNI=; b=CReqSs3SuprWaFjdMrBu9JK1VW5t0AKR6mKfxFIjLsZ78mydGs6
 kCCaBPWLUAkAIA+O65w0eyjZ6jpZ8bhc5awMHG/sSrzepFucskQzvwFLq9xNKyvw
 J2Q9qg98PCPHYD/VP0bkeHBr6O+aPe+iqgdZXq/0pcftBctDBzKjTqLxJj/12KoB
 LuInFvsRmZCbtCqtJMJHSEdw8xKvP3jYXInHNT8BzVS5Lhveu2SNl1lDsinNhxF1
 W/hC+OBLHvWlT9aRkpZX812m5lWd5OX7wdGsxaa7D6d6AM50dKhqx46mb8E1BAs4
 iq11jtzIvaMxmy+DP5SGUN2jzC32ddDB4Sg==
X-ME-Sender: <xms:lbe2ZyK0k166HTEPaOCSUKVT5-x01N_n5InL6-nL6dlFB0n30YY9Pw>
 <xme:lbe2Z6JaCMw06rexprhcfTXV4GS30m41Ryy8fAbd_RDibEzAQT6AkBIMaYXZD5Wb0
 DpbXWzNljnKknszxYE>
X-ME-Received: <xmr:lbe2Zyt7tGEPN2-xIXRCUalf-cpTxD0wYRmVszkVK1YIjn9sPGNHGyf3mE36Jd8wWEOpnduNzps6E78kC16YWd-msgL_I71nyUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeiiedvjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddv
 necuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdei
 ueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghm
 ohgttghhihdrjhhppdhnsggprhgtphhtthhopeehpdhmohguvgepshhmthhpohhuthdprh
 gtphhtthhopehmtghhvghhrggsodhhuhgrfigviheskhgvrhhnvghlrdhorhhgpdhrtghp
 thhtoheplhhinhhugidqughotgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtth
 hopegtohhrsggvtheslhifnhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgv
 lhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:lbe2Z3Z_CNuQCw05QISh-QHZm_hkrE5zQCIdD9lgKcLEpqt9c4PrAQ>
 <xmx:lbe2Z5YNLvbKri0N9Vid6zViII0eoqUJBBJnLSDY0sFyo008PS4tmg>
 <xmx:lbe2ZzAp_0zsB-Q7Q6AdDo0y7-G0HxA2AITEdka4QdCXoMrz0_QhDQ>
 <xmx:lbe2Z_Y6gxITF6y6HDV9XwOeojC3p0vEzheNXSf-jGTbA9O5k7VB_A>
 <xmx:lbe2Z8y2l39_E_p5nU3v5tBTSir8WkJ6UeH1VSkFKG_77zahtd28-vGW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Feb 2025 00:03:15 -0500 (EST)
Date: Thu, 20 Feb 2025 14:03:13 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 03/27] drivers: firewire: firewire-cdev.h: fix identation
 on a kernel-doc markup
Message-ID: <20250220050313.GA414097@workstation.local>
Mail-Followup-To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
References: <cover.1739952783.git.mchehab+huawei@kernel.org>
 <56d88f897214cbfc4593b4bb4b2a04d0168865d7.1739952783.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56d88f897214cbfc4593b4bb4b2a04d0168865d7.1739952783.git.mchehab+huawei@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Feb 19, 2025 at 09:32:19AM +0100, Mauro Carvalho
 Chehab wrote: > The description of @tstamp parameter has one line that starts
 at the > beginning. This moves such line to the description, whic [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tkyie-0003Nd-9f
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
Cc: Jonathan Corbet <corbet@lwn.net>, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Feb 19, 2025 at 09:32:19AM +0100, Mauro Carvalho Chehab wrote:
> The description of @tstamp parameter has one line that starts at the
> beginning. This moves such line to the description, which is not the
> intent here.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  include/uapi/linux/firewire-cdev.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
