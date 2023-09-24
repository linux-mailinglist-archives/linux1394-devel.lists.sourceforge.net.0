Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F77AC82C
	for <lists+linux1394-devel@lfdr.de>; Sun, 24 Sep 2023 14:55:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1qkOdk-0000nl-VO;
	Sun, 24 Sep 2023 12:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1qkOdj-0000nd-Nq
 for linux1394-devel@lists.sourceforge.net;
 Sun, 24 Sep 2023 12:55:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=upcTOUv0s1EAQvf7LZF+X61mhFBEOsrezBxhi1tuN1E=; b=k6iQvdtsAQ68Va4j1JZkEGQzNt
 CyqhgRAePmHG+ejGsxA0hKn1uB042Si22t+TREqXLfHLLzm8+aoB4TbTosZua2ihRNlaEnltWbdeh
 040xxh/9z1OqlkkeIWqCCCsNcMGkQ8QKdL3X8PpMKXp1c6Sa4hLKHaxjfL49Xml3i/Qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=upcTOUv0s1EAQvf7LZF+X61mhFBEOsrezBxhi1tuN1E=; b=Sphv2wiTxNx+olNLPoKfzafluW
 adkGDDvmnhBIrvlIzo4TYGK+DjTJLl34MHELIxb5I5BzAj2v1oR+KXT4Nwwar4QjQegyIeYVicJam
 f1z1MURESs7UrzsWK9pamS1+6FgHS/3+sk3WN7cF2mgeFdMvaHVFLWLY20cKPZql0qEI=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qkOdd-004oSA-Mc for linux1394-devel@lists.sourceforge.net;
 Sun, 24 Sep 2023 12:55:11 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 9BB575C00B4;
 Sun, 24 Sep 2023 08:54:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 24 Sep 2023 08:54:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1695560097; x=
 1695646497; bh=upcTOUv0s1EAQvf7LZF+X61mhFBEOsrezBxhi1tuN1E=; b=D
 Vj+DrDCuSDVaNNM2OxSmHfA4eQYRCtpwV8kzSHeTXErr+x19tfKbKqB1cIKFVjIC
 Suzy7TdPNazUvrrtiUKATWgPojNFZIHN3dEuL/GzP/nbaXRHS2CgkIiGZEfTLx3r
 GByWCKHd5As9VKKcJn+oHaZysZpZZWFYtMFH9bmdu+0iB4dqouPkuTneE7KchjZP
 UlWfgkxhUgcu0C14l2TF3X0OTkqYy1rUGIYoKV5F5Q4gxjPHqer3LHQnsHUx0BNn
 olK6q2GHj9KqBigfNEpS5QsKFZBJGRpZRvgHrFXHqHo/a8Eu1twOkh8n0u6uHekS
 AasGVJIwI1qz7emzPorhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695560097; x=1695646497; bh=upcTOUv0s1EAQ
 vf7LZF+X61mhFBEOsrezBxhi1tuN1E=; b=ozor45gGnPdBTUlpI9Gn3UIpBn1/7
 Cdy6Jb+e2IRZV2Z7yaiSU76MLWc4ZrVGl45WgRrYi0Tw0T9GZ+wpI8rVvpzWsRqD
 03AOL7NSiiCVo62DjSqYi2im/MRh3Als1S1KbAMLzur+7vukt3w3nLfP07byRFPw
 AJqBqh11x/4YQCk5WqwbGofrAmYtP7ZNEEPX+NGkqsa26mcVEyQkV5s72IZsAzzC
 giKqoeu1VxCwGECAEcdGdTO6nwMLyGfFVJJHJ6tz8A9SGCFFwtX6DuCLDbG0kqNK
 KmhJC215IemEYcQHpfZwHQ63XrMFywzvKLX5VQ7upxmfDNjKZ1Pl3eNJQ==
X-ME-Sender: <xms:oTEQZcRa6dWdP15_7XLqsKX9QtiePGFI_-HUq4_JNpLOUjbQ64iYPw>
 <xme:oTEQZZzZjaj5dpJ0FC066zlVmgKmo4m3WM2zWlVJ4Cns-DRIHIZQ8XqmibflxxwH1
 rn1spcTSJ5Hrvlr_U8>
X-ME-Received: <xmr:oTEQZZ0nGBGZ5eo0XNvqQ2V8uxpagKxztrH35GWzyuXyM_kYvzff6Uk3QrcDK3JyW7NOPNXsNhb2INgKP8aFD4q_SvgnuOyeXCY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudelvddgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepudehgeeuveetuedvkeekvdfgffelieeivdelhfet
 tedtveettefgffegjeefleeknecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:oTEQZQBYf-qKo_bj25wnk7uzD0U2kOBN9JkeI2rXv9o-BJvsI7Qj4w>
 <xmx:oTEQZVg8jJ3NvMN6R6AgcAhozpUrwFi3bD-u6bk1fintqhYwcBt4uw>
 <xmx:oTEQZcpd84R5h0reAkVDd5RGwHr_THcak0TMjZ4n3lOIZsoL11qPPQ>
 <xmx:oTEQZQX5Mm-JshwYDF5L_yy083R2F0ilOIcV9x3jheqLbtFvOwA3EQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Sep 2023 08:54:55 -0400 (EDT)
Date: Sun, 24 Sep 2023 21:54:51 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] firewire: Annotate struct fw_node with __counted_by
Message-ID: <20230924125451.GA329414@workstation.local>
Mail-Followup-To: Kees Cook <keescook@chromium.org>,
 linux1394-devel@lists.sourceforge.net,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Tom Rix <trix@redhat.com>, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, linux-hardening@vger.kernel.org
References: <20230922175334.work.335-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230922175334.work.335-kees@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Sep 22, 2023 at 10:53:35AM -0700,
 Kees Cook wrote:
 > Prepare for the coming implementation by GCC and Clang of the __counted_by
 > attribute. Flexible array members annotated with __counted_by [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qkOdd-004oSA-Mc
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
Cc: Tom Rix <trix@redhat.com>, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Sep 22, 2023 at 10:53:35AM -0700, Kees Cook wrote:
> Prepare for the coming implementation by GCC and Clang of the __counted_by
> attribute. Flexible array members annotated with __counted_by can have
> their accesses bounds-checked at run-time checking via CONFIG_UBSAN_BOUNDS
> (for array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
> functions).
> 
> As found with Coccinelle[1], add __counted_by for struct fw_node.
> 
> [1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci
> 
> Cc: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Cc: linux1394-devel@lists.sourceforge.net
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/firewire/core.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next branch, thanks.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
