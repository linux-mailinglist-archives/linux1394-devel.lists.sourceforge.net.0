Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0A51FCE3B
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Jun 2020 15:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iPv6uo65G0yJ217zf1G8l+b0oQDs4VrDkxz2Op5Jvdw=; b=f1iwu7XlMWoT+vRdW/ksH6n0zD
	srpYadle6b840cdmRMBeaizwB5YbbxaVHAs8nmKvBJ6Lyinx1XZyVA0cIRBAk38E+LE8AK2hGQzSG
	Sz5814blB0JC53pv+CaInHPaAPkBlZmHOl0Vlritm9NuhmJvxtC4kE6bbaYY9RI8jaTE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlXwR-0002Rx-DH; Wed, 17 Jun 2020 13:17:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@delivers-solutions.com>) id 1jlXwQ-0002Rr-Et
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 13:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nD2LXSFydu4gppR4zy4e9/bxCcFzCCQc/XbshKt3nVk=; b=AVdHSxf3HEMExoXiNAIdiKQ6TM
 6pKfJjNEdfTXP6jOXeES2K7NHE0fH03JUgGo4NkRcARa4mS+xZe+X6SvE74Paj7dJZ61I+I3WvzhW
 v5R/C6VX4WBoUV+j6QoCb1lMbLdPbkoKnirvXTcmN/uRwdtJKtt2kolfzYvPWbnDqvp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nD2LXSFydu4gppR4zy4e9/bxCcFzCCQc/XbshKt3nVk=; b=H
 4aPOU6yzeBtovIpqvU3jFqcnD/j62Z5pdoRzVcqt72CPdbVxpN6XFYcSN0Fjs+5qij1TCHtmdPZBZ
 9c3luSbgOKuds+gUh0eymZU9EB8O3a3JFl9GHMPbZku6tn8srb0+INsm2Xp3nTmK8y9xPBgOSqmtH
 4FC21tCsVsWMKjVI=;
Received: from rdns4.delivers-solutions.com ([147.135.99.24])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jlXwP-009OTH-5K
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 13:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=n05/o/JUx0/yl0eT3EbZojgoVAYIU5SeV0veKXrWong7+tB6G2bbUKXB5L3ROMmhvyHrR7XQzi9P
 rsuyJIXwUN/K4jFnx+2D7Fb8MwvxQIbvSl2G8LuATVSnHDExdLXN2plxwDAMWZqbf4sSNH1M3LGu
 hcnHRnn07aeF9qIq26g=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=srLhQydeORV7gVwE+Tt6nADK1e0fL4NtoRBA5s9sPlC4t3gSb/vKVbnep3fiaJFkhO+iH5iOi6qR
 YafnmawRg3D3yrpaTCYb1CZY+VJ9w3pRmAgZcFxqskdu+JwpmzPHPYx6z+ZrzRVojiot4J1GFjzx
 KSaoLWIlAiGNn40mMu8=;
To: linux1394-devel@lists.sourceforge.net
Subject: Receipt For Goods Available
Date: 17 Jun 2020 15:17:14 +0200
Message-ID: <20200617151714.7BA0E11520DF5039@delivers-solutions.com>
MIME-Version: 1.0
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlXwP-009OTH-5K
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
From: info--- via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: info@cocyflame.de
Cc: info@delivers-solutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
