Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E05288B965
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Mar 2024 05:20:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1royHz-0002mT-LW;
	Tue, 26 Mar 2024 04:19:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1royHx-0002mH-Jn
 for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 04:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TT6J81xAiZUuDsQWd9ABaj4hlEzDlXvyJDw3uKeZE4E=; b=nBMrMJR0Gg9qGokm+N4SeUa4At
 dnKyY3E3Oxbv1Bmmtd85xKx6LdM9tvfd84pEtEUBZvwlhQIKJaBwOYcJnMAHzB/fddLK+9x7eLrxr
 d/01v0eOXBuF6IK+rDZEEAiCYLwv0zszqn9DD7PafHgR8eJND7t4ySlCDnSUOWwF56TQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TT6J81xAiZUuDsQWd9ABaj4hlEzDlXvyJDw3uKeZE4E=; b=URverOlPX4gwbHeVy7xeJ/fp+f
 yCujsYcDTO5tcltoLmb43rD3CeAGJTjzaI14b6TsSShS5Gn6wGF1pR6tYuLNTddzTLZmzIHHoXijD
 fdzl5e1n3vYaW26HeqNvRbtKLt1N7B6jwnyCoRsAGfQRV7phg92kFQOKHLrz1ewn7Vyg=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1royHv-0000CM-Sp for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 04:19:53 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.west.internal (Postfix) with ESMTP id 30BAF18000B9;
 Tue, 26 Mar 2024 00:19:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 26 Mar 2024 00:19:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711426785; x=
 1711513185; bh=TT6J81xAiZUuDsQWd9ABaj4hlEzDlXvyJDw3uKeZE4E=; b=d
 0XGAgRnUX/SpXskLPOgDm46idTKhNSW8mQ2EmXy2f7AvQ9tZfPAsWymBmn+QlEE2
 IllDpgcXbQnRffR/mu+3MYRSET+8MnkFeemg+C5gye6XCQWSulycctKArNLyqCKs
 8dvpsAmxoUDTyCu14m91Hg6MNPol6wiAEtx8d+LbdXY5Z+oqpxACtiLx2GqpV9r6
 6d3DRkGrhrtnzE3WnkdXaIvyifhoEKPw0qM3F6QP/iloPNHx58ISuj/48FCnnNQi
 u/3S1rzeOWJP7LjcOlAeHzs4PCntdxSfiV2fRXydicX95jonnFDvjZ6VlgtR6tFH
 ocJmE/d2DFux0I+HdR8uQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711426785; x=1711513185; bh=TT6J81xAiZUuDsQWd9ABaj4hlEzD
 lXvyJDw3uKeZE4E=; b=ofr96o99qsHLVlNXCAZyd3LU9JEseKIHMv7eC1RMVS5e
 +EDWxzZmh4NB0MUFJGQa6n4npCwoUMr01D8ZOT9reorLlV2NAPPemkiR4SiNLTvF
 LT1V89Q+Krpu1+eOmxwqeIuNrX9dHVTyMOat7hMDvBjiiN+SpKdpMhebtZywy98G
 CW5e7mBoP4SY6VU8OJdpwgyyNhW/cGMRfCIXMx4VNdy6EGWT3ufgpWtsQMs9aCRz
 ZZ3Hbi7VK/1A1Ga7Sd93PZcGkTTQvMdZpbXYUBfWXQYQW5m04GGALYbkqHXf9Efs
 Z65ssIdOaQ2iSuMpru1qoiNeb3z9CUWck61fODzA1w==
X-ME-Sender: <xms:4UwCZpLouFRNYiqnuik4b8ks8DGZvnV5SSgWbgAYdGE77YEEV0s9hA>
 <xme:4UwCZlJOPH70pxL2W7jnwK__AVLHzTSIru2VmRF_qJHhj6cZr1hAoQJoOHYspHohA
 7X81hQwH8KAn-1N95o>
X-ME-Received: <xmr:4UwCZhtdAzVCwGdyE17zaS6S51tEBDy4OLfZ1rYUo1PWxA6YT70S7vfN4JFCU3WudMqqqsZ2DV69nDJJIMKw0svvuGEn9uXrtfE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4UwCZqZS3Bsf3gJXHTUAAcM2EFJmSQqX8v5ISEe09pSzQrdZy7ytUQ>
 <xmx:4UwCZgYZXDCq7mZWssSno2bRh5rQdTjvXGl9C_LO_qo8-lzdWY2msw>
 <xmx:4UwCZuCnIBy3BLF5laZAarIUQP9JCoODXlMx6e5kVAOSq3rOMNau6A>
 <xmx:4UwCZuZL2MWXrAmZENCG02s5Fn7wS_rafueOlLLdf6T1oVbla-h3gQ>
 <xmx:4UwCZvwiOrat0zjOe76hS0XwESBBaFtDMCFuOCgIu1FHottTWZ-wrxt6Pw0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 Mar 2024 00:19:43 -0400 (EDT)
Date: Tue, 26 Mar 2024 13:19:41 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] firewire: Annotate struct fw_iso_packet with
 __counted_by()
Message-ID: <20240326041941.GA122990@workstation.local>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <ZgIrOuR3JI/jzqoH@neat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgIrOuR3JI/jzqoH@neat>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Mar 25, 2024 at 07:56:10PM -0600, Gustavo A. R.
 Silva wrote: > Prepare for the coming implementation by GCC and Clang of
 the __counted_by > attribute. Flexible array members annotated with __c [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.155 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1royHv-0000CM-Sp
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Mar 25, 2024 at 07:56:10PM -0600, Gustavo A. R. Silva wrote:
> Prepare for the coming implementation by GCC and Clang of the __counted_by
> attribute. Flexible array members annotated with __counted_by can have
> their accesses bounds-checked at run-time via CONFIG_UBSAN_BOUNDS (for
> array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
> functions).
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  include/linux/firewire.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied to for-next branch, since it demands no code changes to the other
subsystem.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
