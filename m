Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7ABA4FD55
	for <lists+linux1394-devel@lfdr.de>; Wed,  5 Mar 2025 12:14:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tpmhY-00065l-QN;
	Wed, 05 Mar 2025 11:14:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tpmhX-00065b-Hb
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Mar 2025 11:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N7EyxBWyLyajrG4+9lXdCeKumGTXiAwsgiBLJZor9Cw=; b=BSHj+eG2V4qZgmkMw7BKe1PlEH
 rpN4akfx6oDL2eZYFj7oqh1uhlpuGXZzxoXLG4zgAX89bqsCY0AFUbU87HnnPWdbxphwPjx5avOmp
 xLUqYTpBQLSCmSpfsK2BVXsVhL+T05ZN6GdfUZHFLrq14fOzQm1uQy7cxgPewPOXb1UA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N7EyxBWyLyajrG4+9lXdCeKumGTXiAwsgiBLJZor9Cw=; b=jkumUHyNFRqq4A5ThfbEwqzQ4y
 XZfxCOcYNGmoYwiFYnvLskgo5oJmIaOqhaUC9adVlPpUpTIs3K6fEBx4zrdpFWZ4RhYFZltC3Cf4A
 mXDs/QnYMAiauLcrcBGl5Jnga/1A6bM+QN4uS2MWnvOnRze0/ocC5SNfZYkFKCWxRKss=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tpmhR-0001qj-SP for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Mar 2025 11:14:11 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 3810D11401A0;
 Wed,  5 Mar 2025 06:14:00 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Wed, 05 Mar 2025 06:14:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1741173240; x=1741259640; bh=N7EyxBWyLy
 ajrG4+9lXdCeKumGTXiAwsgiBLJZor9Cw=; b=aWrZ8EOC+RieG3O+SaJvHntFdP
 aWuLIDSDSs51YA7BIgut+4JUr0QziAtOEDsStpO5P2PcKC17StOwTnvMlA3kza/1
 DJUAI/B55g1foagX9u6pbFNin1f7mbPdqUM39Kh59pZ3AEnFYiFRDI7SdtC+JbZU
 L+IRHgfOVb+0aESCK+vObDZSD7I1RfIFhPO/ir2PxF9c6k8xe+JD+4oCFh6GxzvV
 hwjsF0KO2fiI6/+FpVy2I5paKFTP7jejJfcCv2zMPhMqv7dFsEx91BzJNOaMdars
 /vb0THG8IVj90o/953ajBq+kqWJ67FPrpG9c09Svy0kjp+nUCd5lQH7c71oA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1741173240; x=1741259640; bh=N7EyxBWyLyajrG4+9lXdCeKumGTXiAwsgiB
 LJZor9Cw=; b=hyD82ZjqGGBxAT50kQ+JdEuzR64zcpMQcNAwlRMNy3K8sTtzoY9
 vsDfERzKSeFggASzD5CxDsxyNe/RzzmcO9/KZRz0a284CQYvyn0Yk7i6cFe1BOvh
 I8EIFrAhDe727en3iZoi6n7hqM/cNqMJhIPutnZOP7zmdns75MBLZQcNG6/Lmi7s
 ucfXbeV6xZ5lW4a4IsF/DK5xakHk5hzbb+Lm2XiNNaCT3JXtnwAk6Nf3Nlelgp1I
 BA4V8Fq/Fi4x9WFsbAOp1Ka6QA6yE9tHQmihtdIj0+YXmuL0FcnEHR2yJZW6mgw3
 qYa/6zN5ELeFHoXtGaiF89QsJLfiC07tv7A==
X-ME-Sender: <xms:9zHIZ3PZ2R2SjXmY10CFjU_jjEJgAZpRCPLq2XvAS_4fzyUQwCbfDA>
 <xme:9zHIZx8EGec3GHlnT1xJUFb1U9RezQ-9acsdTNBgUqnvqfIObe04qDAyz6ue3t_01
 s8BCfKb5Z79bhy1iQk>
X-ME-Received: <xmr:9zHIZ2TzToUAh_ktBodC_iCb9yvJOcU6QKod7TEHroIka6cqYLsIjpI7kUZKZYlTuDL_Esvc-DNPiqRY3CftuQehZg76OqBPRV0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddutdegieeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddv
 necuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeejgeeifeeuveeufeei
 geegjeelvdfgjeegffejgfdvkeelhefgtdefteejleekjeenucffohhmrghinhepkhgvrh
 hnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpth
 htohephedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhgthhgvhhgrsgdohhhu
 rgifvghisehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdguohgtsehvgh
 gvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghorhgsvghtsehlfihnrdhnvght
 pdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorh
 hgpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhr
 tggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:9zHIZ7vlXA4cHOGuY_Qfi0GPXXKwYMkab50FI_C6aG1eVqZ0svdaxg>
 <xmx:9zHIZ_eWm8JQxNMzqVpBmL8ldeeeE15ygXvImEuCnl3-87aIKzx23g>
 <xmx:9zHIZ33Ne4R2-e44jbY_DmGf0XABMUbE1UGHmS0fWwWd4bd6OsCWZQ>
 <xmx:9zHIZ79dLutUTnROV69x7zShglQrEDtYebtnKBUY_TfgQg2RsQfQWQ>
 <xmx:-DHIZwFa71z7HJNY6SaamS-uL37tUjTTzEJPXlG9SY5ujxrgoRqPhpmc>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Mar 2025 06:13:58 -0500 (EST)
Date: Wed, 5 Mar 2025 20:13:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 03/27] drivers: firewire: firewire-cdev.h: fix identation
 on a kernel-doc markup
Message-ID: <20250305111355.GA143843@workstation.local>
Mail-Followup-To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
References: <cover.1739952783.git.mchehab+huawei@kernel.org>
 <56d88f897214cbfc4593b4bb4b2a04d0168865d7.1739952783.git.mchehab+huawei@kernel.org>
 <20250220050313.GA414097@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250220050313.GA414097@workstation.local>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Feb 20, 2025 at 02:03:13PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > On Wed, Feb 19, 2025 at 09:32:19AM +0100, Mauro Carvalho
 Chehab wrote: > > The description of @tstamp parameter has one line [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tpmhR-0001qj-SP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Feb 20, 2025 at 02:03:13PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> On Wed, Feb 19, 2025 at 09:32:19AM +0100, Mauro Carvalho Chehab wrote:
> > The description of @tstamp parameter has one line that starts at the
> > beginning. This moves such line to the description, which is not the
> > intent here.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  include/uapi/linux/firewire-cdev.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> Applied to for-next branch.

I dropped the patch from for-next branch since it already exists in
jc_docs tree.

https://lore.kernel.org/lkml/20250305135637.51f92f44@canb.auug.org.au/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
