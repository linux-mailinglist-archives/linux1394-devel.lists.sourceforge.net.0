Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E58C19B1C41
	for <lists+linux1394-devel@lfdr.de>; Sun, 27 Oct 2024 06:37:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1t4vxw-0006rw-EW;
	Sun, 27 Oct 2024 05:37:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1t4vxu-0006rm-HJ
 for linux1394-devel@lists.sourceforge.net;
 Sun, 27 Oct 2024 05:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k2/aIs939sA9Ai/RPM8rerCD3QxcglmtmmyoHMu3KKM=; b=eEpbtJv04ud9yUfHOIbPlyJaQ7
 cBfzUBTA50hrGrLH9zpO9PO/CYucAGbmhaha6nvVSVqWB/Hy4fCTVhnIbmDYw8mxvw3TLnqWEs300
 uZ2apy/99z+XyaRcuX68gvR4kk++HGfi7DhMiHTCDHA6RV/o7+DYlKqwwGaTU3v/JSMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k2/aIs939sA9Ai/RPM8rerCD3QxcglmtmmyoHMu3KKM=; b=drGJf/BdTnVk8uuBAKka8MdIjM
 HHSbk7Dcgjx3hiJB8TmsX4bhSWyZt21Jg/sg9+IEyKPEJasL5/swIWfO5AR6yzBtDkRkjRJPQRUk/
 sW6On2lA/3gT5EZ+YFIidllGRCnbW19mWlKqq/qqUmBGFEyopvIf1H/tLxbe+tf18UtU=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4vxt-0002QN-0R for linux1394-devel@lists.sourceforge.net;
 Sun, 27 Oct 2024 05:37:26 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 4AFAC11400E4;
 Sun, 27 Oct 2024 01:37:14 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 27 Oct 2024 01:37:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1730007434; x=
 1730093834; bh=k2/aIs939sA9Ai/RPM8rerCD3QxcglmtmmyoHMu3KKM=; b=d
 VFt2rXw331EEbOJeCryCT82YvMQIFiyPffuTDb7s/pn+Q0f7eSsqKhu0fo8w2arH
 nONiamoKLRuBcjsztzhVZd/4DULQ/Q7r4F77R/Yx3+kxR3KDlCsp3Q5pC22er1+B
 +mqO6bR0CIG37GF4gSD9vuowlUR3roRyOXH5RsG7AWDQhCvce4KEuD2t9RQuBQq8
 nZRDe+PtKvZzM6BfjSKHC6Cmmy1/3RiT5L5shlk1cJ9bAbGsP2oMkvWtd/I8VxD1
 ApMfePLTxyAX7JSCTItBBeXpNRJRHhN4eecO9xHQ+ALzko+HoVoHJOb6XZpNAzJ5
 RlTa3Y4BxpviaeDPb1e3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1730007434; x=1730093834; bh=k2/aIs939sA9Ai/RPM8rerCD3Qxc
 glmtmmyoHMu3KKM=; b=BWUILe5fYrmMLBlEcMkA7oDb5LFIZt+AKCotj7cehvKx
 hahVVdivekiyQYIss6CLhuQowroaMd2E1QRTUvYJ4btUC9upyex67GJVnSN8qGo4
 ZKsC424EXH5Xwz3PgV72ipFhoeppQbDwNRc4Vj7vHff1RPCIi5/ZrnPJi0pTjoTA
 3P5+zPKGX7LleMOE+TauvE2eQMq8tCB+z1ia1iCxd1/UMSKDR0ybQDLygt9YLjsq
 Z5dREgkMS6y1w0M3E8FtsR5Hld+Xjy/lbid13oMTH2/cpM4TAAfo5tHpAahE+LkE
 30eTu2Uf9+oYzxIakan41iwBaQxZPugq9xQCqcYKbw==
X-ME-Sender: <xms:idEdZ-osFFx5SDJkBFjzVS0ElakvtrZnAAFmLt8i2OgTa3kskDFIyA>
 <xme:idEdZ8p3n_DjWC2-Wc5yxr9Obgn0iJTNQaMynp1z3OFc1y-F2PmbrpH5qDg_DCcXK
 crp42T59AfXYSAhUd8>
X-ME-Received: <xmr:idEdZzPVHUtC2x9BpSuxyNmMjzF3BxaiDcmO4XKacNRfk0DZ0EM-iFaHncotcA0xYePQ4Iugurqc8C2v6JRPstGfX9Y1d6Jcsd8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejhedgleejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeff
 udduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnh
 gvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtth
 hopeegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdgu
 vghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepvg
 gumhhunhgurdhrrghilhgvsehprhhothhonhdrmhgvpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhtrggslh
 gvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:idEdZ94EJ9PbtVLtxHr0XqysrMni6JB-bs2JwD-HCd03Gx3YTQ1VkA>
 <xmx:idEdZ95K6DLisPe0RP1zG9LXK3bBhZnnZXscGDX7XE_AQWx1jtwq9g>
 <xmx:idEdZ9jwuWmqtHzKzf87QgRel2zRY4XXXVc3GrnLD_5S8TXwqSg3cA>
 <xmx:idEdZ34tS9w9bPCkNBQO1rousObveiBJ_qXnjgtYUxp1FP-rjkfhLg>
 <xmx:itEdZw2uGUFMcF7jxu3C2DLRQBUqi9oes3eSkaVmdu2AZti_97O1BTxy>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Oct 2024 01:37:12 -0400 (EDT)
Date: Sun, 27 Oct 2024 14:37:09 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix invalid port index for parent device
Message-ID: <20241027053709.GA122484@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 Edmund Raile <edmund.raile@proton.me>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20241025034137.99317-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241025034137.99317-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 25, 2024 at 12:41:37PM +0900, Takashi Sakamoto
 wrote: > In a commit 24b7f8e5cd65 ("firewire: core: use helper functions
 for self > ID sequence"), the enumeration over self ID sequence was [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1t4vxt-0002QN-0R
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
Cc: Edmund Raile <edmund.raile@proton.me>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Fri, Oct 25, 2024 at 12:41:37PM +0900, Takashi Sakamoto wrote:
> In a commit 24b7f8e5cd65 ("firewire: core: use helper functions for self
> ID sequence"), the enumeration over self ID sequence was refactored with
> some helper functions with KUnit tests. These helper functions are
> guaranteed to work expectedly by the KUnit tests, however their application
> includes a mistake to assign invalid value to the index of port connected
> to parent device.
> 
> This bug affects the case that any extra node devices which has three or
> more ports are connected to 1394 OHCI controller. In the case, the path
> to update the tree cache could hits WARN_ON(), and gets general protection
> fault due to the access to invalid address computed by the invalid value.
> 
> This commit fixes the bug to assign correct port index.
> 
> Cc: stable@vger.kernel.org
> Reported-by: Edmund Raile <edmund.raile@proton.me>
> Closes: https://lore.kernel.org/lkml/8a9902a4ece9329af1e1e42f5fea76861f0bf0e8.camel@proton.me/
> Fixes: 24b7f8e5cd65 ("firewire: core: use helper functions for self ID sequence")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-topology.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-linus branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
