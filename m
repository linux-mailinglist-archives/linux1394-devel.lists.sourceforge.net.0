Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F8DB02AE8
	for <lists+linux1394-devel@lfdr.de>; Sat, 12 Jul 2025 15:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GsKIEzAmNFbghBordB14aaObQPRX1bCq+xWRA5A+V8c=; b=Qb0edBKaY5qqU1mKkB/Sy4npHk
	fLbev07+R0FkwhYn+1I2u+nbwE5kudpsc3C+h2O68cE1I/RI6V+5Z0LUavuR9zXuvg/WS2mAyBcdf
	QBJAKgyfLgL/J3tblttg0gpRkGQZ1z9kUnkudFm9AWz96ueCWjKrVawHNTPI5WiARU+4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uaZqM-00027L-TJ;
	Sat, 12 Jul 2025 13:00:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uaZqA-00026y-Bo
 for linux1394-devel@lists.sourceforge.net;
 Sat, 12 Jul 2025 13:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jui/+QSpzZNpNgRjCQ8+CrBLxFIQyPUBrGF+R44rlAI=; b=bJxHWB6hQ7yKfIXksin8oSwMlW
 dfqPJ6l9qH/DYewDsS4PWRXBvmUItqEOlv7qkWwm99QurBhigKwt77Hl+orRQQam1KQ67MY9yAFEI
 DFEmxcn6XcFku675i+zaEVktQ3uP+vwqeIsIxJ4jgkApei6e/MTnN71mjEalbj96fono=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jui/+QSpzZNpNgRjCQ8+CrBLxFIQyPUBrGF+R44rlAI=; b=A+NCbOrYLMFWxKYtVy7c5mGlKp
 wjMxvVOTxHLmFbva1QXMnLci73Yj+lhJmIM3xIyuV9ceo0Jp3qpviV1ePgQ5oiLDTe0rKVPNDptay
 lpcQ9SqYJSKq88DAIdACiudm9gonMTVeW6mUEpW0hUixV4XjH8jqI0eCT6+v/0Odw6Ds=;
Received: from fhigh-b5-smtp.messagingengine.com ([202.12.124.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uaZq5-00024r-3u for linux1394-devel@lists.sourceforge.net;
 Sat, 12 Jul 2025 13:00:25 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 68BD37A018C;
 Sat, 12 Jul 2025 09:00:14 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Sat, 12 Jul 2025 09:00:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1752325214; x=
 1752411614; bh=jui/+QSpzZNpNgRjCQ8+CrBLxFIQyPUBrGF+R44rlAI=; b=V
 /zBlI5HKTcvYX3YLS2L01uyT6UPgfDhrzLsW8FxZRkpA/1hCoatvQOVmGUuhURzW
 dlENfB0kW50L/QVlvrXf8I1HiMp6J2LNI2ZdeEc48dHCGZPmB+ba5zACp3RSydpw
 Qe24RpCxmO4qnmDYEglW4Uir/py3XPD3e/UJD9cvO6whouXgBJldAfl5kFcHmDnM
 0a+0XghcAsDvB4S19/OmtxE8FVyMiPqtY3QFS8Jri8w+EAJuMDXXp4EFL+k4GWer
 owtUdhKsACGEZst3NZQWViZ20mEyG1pD3jJE1gZ+1y9HV5gQGrCBld6WqeZ1p5is
 jIkCQ+Aq/U5/Xo16o644g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1752325214; x=1752411614; bh=jui/+QSpzZNpNgRjCQ8+CrBLxFIQyPUBrGF
 +R44rlAI=; b=DBaXuu+0KfaXZ2lho9YdzIalNdknGeA+qCPl++KrGzaDX2DAI+P
 aCsXQffriq3i2PHsAjlitCcx+YaZlS4lAmtSrzKhHd+2a4vWeIscbLEfqdsClkuL
 LQwmGhCmWjk4SgFbGCstmJrtQ8YCKC07n1uAnpT32TsRM677s/cnKDY7LICSLq6O
 OCxNBxnWMUJaM3/I7TX49fU27yZQ/CjpyrlSQbHzd+yKgEk2q0EsRjjg8e5jSc7j
 NP7LipMLwQz7CnT62xQ/GDrT62RT1lX0dfBN0Kk4OAfBKPIFXWVawT08kOw2FFnn
 +pujbC6R3B3Q8+o5WM8Iu/zpYqJ3CLJMeEw==
X-ME-Sender: <xms:XlxyaDtLWut_vTt0Crq3pXc78BoDaUiXJascm0caP_8cWxkq50Ly9w>
 <xme:XlxyaNaHM8OD8hoa7T13SwewVdQ9L5cMtkWyckdybwqumeUGN9FYe_jFcHuqe2RIw
 Ceg9uh9i_Na1ts8bxM>
X-ME-Received: <xmr:XlxyaIsF29MmdZcJ0mfhy8xOFrZwF9cgMo0ZG_df5h9H9H5FI88YwA4Egs4Dq4lJbOYgiz7wZCGMkS9QnrlFoQ0-yPihTsT6n5c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdegiedvjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:XlxyaPHw9Hwlgp9lnHoAhb6rB3QqUuksUgPMqp45hR1p4FlnXGgucA>
 <xmx:XlxyaDwUwRL62kuNqlsrQ7JfcOlJDjQaRXi7WRqJJTmL2UK7sRdC5A>
 <xmx:XlxyaOiNMVg5LqH1ipQe0AQCv5NOAEPPAz7a_IhFz7326i7UGGKJ-g>
 <xmx:XlxyaGxfQv3zZU5vQ4ZOKIwEduUh6_kADgvliZivoxAIFE49wKOnKg>
 <xmx:XlxyaIQq6y9Gq4Df2LwRFGYhdYfHp9Ytdr6qZCiGUYuPRGbpC4wUY92t>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 12 Jul 2025 09:00:13 -0400 (EDT)
Date: Sat, 12 Jul 2025 22:00:10 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: reduce the size of common context
 structure by extracting members into AT structure
Message-ID: <20250712130010.GA126510@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250710131916.31289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250710131916.31289-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jul 10, 2025 at 10:19:16PM +0900, Takashi Sakamoto
 wrote: > In commit 386a4153a2c1 ("firewire: ohci: cache the context run bit"), 
 a > running member was added to the context structure to cache [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uaZq5-00024r-3u
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Jul 10, 2025 at 10:19:16PM +0900, Takashi Sakamoto wrote:
> In commit 386a4153a2c1 ("firewire: ohci: cache the context run bit"), a
> running member was added to the context structure to cache the running
> state of a given DMA context. Although this member is accessible from IR,
> IT, and AT contexts, it is currently used only by the AT context.
> 
> Additionally, the context structure includes a work item, which is also
> used by the AT context. Both members are unnecessary for IR and IT
> contexts.
> 
> This commit refactors the code by moving these two members into a new
> structure specific to AT context.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 92 ++++++++++++++++++++++-------------------
>  1 file changed, 49 insertions(+), 43 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
